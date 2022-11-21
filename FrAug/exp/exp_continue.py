from data_provider.data_factory import data_provider
from exp.exp_basic import Exp_Basic
from models import Informer, Autoformer, Transformer, DLinear, Linear, NLinear, LightTS, FEDformer
from utils.tools import EarlyStopping, adjust_learning_rate, visual, test_params_flop
from utils.metrics import metric
from torch.utils.data import DataLoader
import numpy as np
import torch
import torch.nn as nn
from torch import optim
from utils.augmentations import augmentation
import os
import time
import copy
import warnings
import matplotlib.pyplot as plt
import numpy as np

warnings.filterwarnings('ignore')

class Exp_Main(Exp_Basic):
    def __init__(self, args):
        super(Exp_Main, self).__init__(args)

    def _build_model(self):
        model_dict = {
            'Autoformer': Autoformer,
            'Transformer': Transformer,
            'Informer': Informer,
            'FEDformer': FEDformer,
            'DLinear': DLinear,
            'NLinear': NLinear,
            'Linear': Linear,
            'LightTS': LightTS,
        }
        model = model_dict[self.args.model].Model(self.args).float()

        if self.args.use_multi_gpu and self.args.use_gpu:
            model = nn.DataParallel(model, device_ids=self.args.device_ids)
        return model

    def augmentation(self, dataset,nonoverlap_test_index):
        aug = augmentation('dataset')
        x_data, y_data, x_time, y_time = dataset.x_data[:nonoverlap_test_index], dataset.y_data[:nonoverlap_test_index], dataset.x_time[:nonoverlap_test_index], dataset.y_time[:nonoverlap_test_index]
        origin_len = nonoverlap_test_index
        for i in range(nonoverlap_test_index):
            for _ in range(self.args.aug_data_size):
                if self.args.aug_method == 'f_mask':
                    x,y = aug.freq_dropout(dataset.x_data[i],dataset.y_data[i],dropout_rate=self.args.aug_rate)
                elif self.args.aug_method == 'f_mix':
                    rand = float(np.random.random(1))
                    i2 = int(rand*len(dataset.x_data))
                    x,y = aug.freq_mix(dataset.x_data[i],dataset.y_data[i],dataset.x_data[i2],dataset.y_data[i2],dropout_rate=self.args.aug_rate)
                else: 
                    raise ValueError
                x_data.append(x)
                y_data.append(y)
                x_time.append(dataset.x_time[i]) 
                y_time.append(dataset.y_time[i])
        return x_data, y_data, x_time, y_time

    def enlarge_dataset(self, dataset1, dataset2, nonoverlap_test_index):
        x_data, y_data, x_time, y_time = self.augmentation(copy.deepcopy(dataset2), nonoverlap_test_index)
        dataset1.x_data = dataset1.x_data + x_data
        dataset1.y_data = dataset1.y_data + y_data
        dataset1.x_time = dataset1.x_time + x_time
        dataset1.y_time = dataset1.y_time + y_time
        return dataset1

    def div_dataset(self, dataset, div):
        dataset_list = []
        div_length = len(dataset)//div
        for i in range(div):
            dataset_temp = copy.deepcopy(dataset)
            start = i*div_length
            end = (i+1)*div_length if i+1 < div else len(dataset)
            dataset_temp.x_data = dataset_temp.x_data[start: end]
            dataset_temp.y_data = dataset_temp.y_data[start: end]
            dataset_temp.x_time = dataset_temp.x_time[start: end]
            dataset_temp.y_time = dataset_temp.y_time[start: end]
            dataset_list.append(dataset_temp)
        return dataset_list

    def continue_learning(self, setting):
        original_train_set, train_loader = self._get_data(flag='train')
        all_test_data, test_loader = self._get_data(flag='test')
        testset_div = self.args.testset_div
        dataset_list = self.div_dataset(all_test_data, testset_div)
        all_loss = []
        current_test_index = 0
        nonoverlap_test_index = 0
        self.train(setting, train_loader)
        original_loss = self.vali(test_loader, self._select_criterion(), testset_div, setting)

        for i, test_data in enumerate(dataset_list):
            if nonoverlap_test_index > 0:
                self.train(setting, train_loader)
            test_loader = DataLoader(
                test_data,
                batch_size=self.args.batch_size,
                shuffle=False,
                num_workers=self.args.num_workers,
                drop_last=False)
            loss = self.vali(test_loader, self._select_criterion(), i, setting)
            all_loss.append(loss)
            print('Part %d/%d'%(i+1,testset_div),'\tTest loss: ', loss)
            current_test_index += len(test_data)
            nonoverlap_test_index = current_test_index - self.args.pred_len
            if nonoverlap_test_index > 0:
                train_data = self.enlarge_dataset(copy.deepcopy(original_train_set), all_test_data, nonoverlap_test_index)
                print("enlarging dataset:", len(original_train_set), nonoverlap_test_index, len(train_data))
                train_loader = DataLoader(
                    train_data,
                    batch_size=self.args.batch_size,
                    shuffle=True,
                    num_workers=self.args.num_workers,
                    drop_last=True)
                self.model = self._build_model().to(self.device)

        print('Original Test loss: ', original_loss)
        print('Final Test loss: ', sum(all_loss)/testset_div)
        for i, loss  in enumerate(all_loss):
            print('Part %d/%d'%(i+1,testset_div), '\tTest loss: ', loss)
        

    def _get_data(self, flag):
        data_set, data_loader = data_provider(self.args, flag)
        return data_set, data_loader

    def _select_optimizer(self):
        model_optim = optim.Adam(self.model.parameters(), lr=self.args.learning_rate)
        return model_optim

    def _select_criterion(self):
        criterion = nn.MSELoss()
        return criterion

    def vali(self, vali_loader, criterion, save_iter=-1, setting=None):
        total_loss = []
        self.model.eval()
        preds = []
        trues = []
        with torch.no_grad():
            for i, (batch_x, batch_y, batch_x_mark, batch_y_mark) in enumerate(vali_loader):
                batch_x = batch_x.float().to(self.device)
                batch_y = batch_y.float()

                batch_x_mark = batch_x_mark.float().to(self.device)
                batch_y_mark = batch_y_mark.float().to(self.device)

                # decoder input
                dec_inp = torch.zeros_like(batch_y[:, -self.args.pred_len:, :]).float()
                dec_inp = torch.cat([batch_y[:, :self.args.label_len, :], dec_inp], dim=1).float().to(self.device)
                # encoder - decoder
                if 'former' not in self.args.model:
                    outputs = self.model(batch_x)
                else:
                    if self.args.output_attention:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)[0]
                    else:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)
                f_dim = -1 if self.args.features == 'MS' else 0
                outputs = outputs[:, -self.args.pred_len:, f_dim:]
                batch_y = batch_y[:, -self.args.pred_len:, f_dim:].to(self.device)

                pred = outputs.detach().cpu()
                true = batch_y.detach().cpu()

                preds.append(pred)
                trues.append(true)

                loss = criterion(pred, true)
                total_loss.append(loss)

        total_loss = np.average(total_loss)

        if save_iter != -1:
            folder_path = './results/' + setting + '/'
            if not os.path.exists(folder_path):
                os.makedirs(folder_path)
            preds = np.concatenate(preds, axis=0)
            trues = np.concatenate(trues, axis=0)
            np.save(folder_path + 'pred_%d.npy'%save_iter, preds)
            np.save(folder_path + 'true_%d.npy'%save_iter, trues)

        self.model.train()
        return total_loss

    def train(self, setting, train_loader):
        path = os.path.join(self.args.checkpoints, setting)
        vali_data, vali_loader = self._get_data(flag='val')
        if not os.path.exists(path):
            os.makedirs(path)

        time_now = time.time()

        train_steps = len(train_loader)
        early_stopping = EarlyStopping(patience=self.args.patience, verbose=True)

        model_optim = self._select_optimizer()
        criterion = self._select_criterion()

        for epoch in range(self.args.train_epochs):
            iter_count = 0
            train_loss = []

            self.model.train()
            epoch_time = time.time()
            if self.args.in_dataset_augmentation:
                train_loader.dataset.regenerate_augmentation_data()

            for i, (batch_x, batch_y, batch_x_mark, batch_y_mark) in enumerate(train_loader):
                iter_count += 1
                model_optim.zero_grad()

                batch_x = batch_x.float().to(self.device)
                batch_y = batch_y.float().to(self.device)
                batch_x_mark = batch_x_mark.float().to(self.device)
                batch_y_mark = batch_y_mark.float().to(self.device)

                # if self.args.in_batch_augmentation:
                #     aug = augmentation('batch')
                #     methods = {'f_mask':aug.freq_mask, 'f_mix': aug.freq_mix}
                #     for step in range(self.args.aug_data_size):
                #         xy = methods[self.args.aug_method](batch_x, batch_y[:, -self.args.pred_len:, :], rate=self.args.aug_rate, dim=1)
                #         batch_x2, batch_y2 = xy[:, :self.args.seq_len, :], xy[:, -self.args.label_len-self.args.pred_len:, :]
                #         batch_x = torch.cat([batch_x,batch_x2],dim=0)
                #         batch_y = torch.cat([batch_y,batch_y2],dim=0)
                #         batch_x_mark = torch.cat([batch_x_mark,batch_x_mark],dim=0)
                #         batch_y_mark = torch.cat([batch_y_mark,batch_y_mark],dim=0)
                        
                # decoder input
                dec_inp = torch.zeros_like(batch_y[:, -self.args.pred_len:, :]).float()
                dec_inp = torch.cat([batch_y[:, :self.args.label_len, :], dec_inp], dim=1).float().to(self.device)

                # encoder - decoder
                if 'former' not in self.args.model:
                        outputs = self.model(batch_x)
                else:
                    if self.args.output_attention:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)[0]
                    else:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark, batch_y)

                # print(outputs.shape,batch_y.shape)
                f_dim = -1 if self.args.features == 'MS' else 0
                outputs = outputs[:, -self.args.pred_len:, f_dim:]
                batch_y = batch_y[:, -self.args.pred_len:, f_dim:].to(self.device)
                loss = criterion(outputs, batch_y)
                train_loss.append(loss.item())

                if (i + 1) % 100 == 0:
                    print("\titers: {0}, epoch: {1} | loss: {2:.7f}".format(i + 1, epoch + 1, loss.item()))
                    speed = (time.time() - time_now) / iter_count
                    left_time = speed * ((self.args.train_epochs - epoch) * train_steps - i)
                    print('\tspeed: {:.4f}s/iter; left time: {:.4f}s'.format(speed, left_time))
                    iter_count = 0
                    time_now = time.time()

                loss.backward()
                model_optim.step()

            print("Epoch: {} cost time: {}".format(epoch + 1, time.time() - epoch_time))
            train_loss = np.average(train_loss)
            vali_loss = self.vali(vali_loader, criterion)

            print("Epoch: {0}, Steps: {1} | Train Loss: {2:.7f} Vali Loss: {3:.7f}".format(
                epoch + 1, train_steps, train_loss, vali_loss))
            early_stopping(vali_loss, self.model, path)
            if early_stopping.early_stop:
                print("Early stopping")
                break

            adjust_learning_rate(model_optim, epoch + 1, self.args)

        
        best_model_path = path + '/' + 'checkpoint.pth'
        self.model.load_state_dict(torch.load(best_model_path))

        return self.model

    def test(self, setting, test=0):
        test_data, test_loader = self._get_data(flag='test')
        
        if test:
            print('loading model')
            self.model.load_state_dict(torch.load(os.path.join('./checkpoints/' + setting, 'checkpoint.pth')))

        preds = []
        trues = []
        inputx = []
        folder_path = './test_results/' + setting + '/'
        if not os.path.exists(folder_path):
            os.makedirs(folder_path)

        self.model.eval()
        with torch.no_grad():
            for i, (batch_x, batch_y, batch_x_mark, batch_y_mark) in enumerate(test_loader):
                batch_x = batch_x.float().to(self.device)
                batch_y = batch_y.float().to(self.device)

                batch_x_mark = batch_x_mark.float().to(self.device)
                batch_y_mark = batch_y_mark.float().to(self.device)

                # decoder input
                dec_inp = torch.zeros_like(batch_y[:, -self.args.pred_len:, :]).float()
                dec_inp = torch.cat([batch_y[:, :self.args.label_len, :], dec_inp], dim=1).float().to(self.device)
                # encoder - decoder
                
                if 'former' not in self.args.model:
                        outputs = self.model(batch_x)
                else:
                    if self.args.output_attention:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)[0]

                    else:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)

                f_dim = -1 if self.args.features == 'MS' else 0
                # print(outputs.shape,batch_y.shape)
                outputs = outputs[:, -self.args.pred_len:, f_dim:]
                batch_y = batch_y[:, -self.args.pred_len:, f_dim:].to(self.device)
                outputs = outputs.detach().cpu().numpy()
                batch_y = batch_y.detach().cpu().numpy()

                pred = outputs  # outputs.detach().cpu().numpy()  # .squeeze()
                true = batch_y  # batch_y.detach().cpu().numpy()  # .squeeze()

                preds.append(pred)
                trues.append(true)
                inputx.append(batch_x.detach().cpu().numpy())
                if i % 20 == 0:
                    input = batch_x.detach().cpu().numpy()
                    gt = np.concatenate((input[0, :, -1], true[0, :, -1]), axis=0)
                    pd = np.concatenate((input[0, :, -1], pred[0, :, -1]), axis=0)
                    visual(gt, pd, os.path.join(folder_path, str(i) + '.pdf'))

        if self.args.test_flop:
            test_params_flop((batch_x.shape[1],batch_x.shape[2]))
            exit()
        preds = np.array(preds)
        trues = np.array(trues)
        inputx = np.array(inputx)

        preds = preds.reshape(-1, preds.shape[-2], preds.shape[-1])
        trues = trues.reshape(-1, trues.shape[-2], trues.shape[-1])
        inputx = inputx.reshape(-1, inputx.shape[-2], inputx.shape[-1])

        # result save
        folder_path = './results/' + setting + '/'
        if not os.path.exists(folder_path):
            os.makedirs(folder_path)

        mae, mse, rmse, mape, mspe, rse, corr = metric(preds, trues)
        print('mse:{}, mae:{}, rse:{}'.format(mse, mae, rse))
        f = open("result.txt", 'a')
        f.write(setting + "  \n")
        f.write('mse:{}, mae:{}, rse:{}, corr:{}'.format(mse, mae, rse, corr))
        f.write('\n')
        f.write('\n')
        f.close()

        # np.save(folder_path + 'metrics.npy', np.array([mae, mse, rmse, mape, mspe,rse, corr]))
        # np.save(folder_path + 'pred.npy', preds)
        # np.save(folder_path + 'true.npy', trues)
        # np.save(folder_path + 'x.npy', inputx)
        return

    def predict(self, setting, load=False):
        pred_data, pred_loader = self._get_data(flag='pred')

        if load:
            path = os.path.join(self.args.checkpoints, setting)
            best_model_path = path + '/' + 'checkpoint.pth'
            self.model.load_state_dict(torch.load(best_model_path))

        preds = []

        self.model.eval()
        with torch.no_grad():
            for i, (batch_x, batch_y, batch_x_mark, batch_y_mark) in enumerate(pred_loader):
                batch_x = batch_x.float().to(self.device)
                batch_y = batch_y.float()
                batch_x_mark = batch_x_mark.float().to(self.device)
                batch_y_mark = batch_y_mark.float().to(self.device)

                # decoder input
                dec_inp = torch.zeros([batch_y.shape[0], self.args.pred_len, batch_y.shape[2]]).float().to(batch_y.device)
                dec_inp = torch.cat([batch_y[:, :self.args.label_len, :], dec_inp], dim=1).float().to(self.device)
                # encoder - decoder
                if 'former' not in self.args.model:
                    outputs = self.model(batch_x)
                else:
                    if self.args.output_attention:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)[0]
                    else:
                        outputs = self.model(batch_x, batch_x_mark, dec_inp, batch_y_mark)
                pred = outputs.detach().cpu().numpy()  # .squeeze()
                preds.append(pred)

        preds = np.array(preds)
        preds = preds.reshape(-1, preds.shape[-2], preds.shape[-1])

        # result save
        folder_path = './results/' + setting + '/'
        if not os.path.exists(folder_path):
            os.makedirs(folder_path)

        np.save(folder_path + 'real_prediction.npy', preds)

        return