# ALL scripts in this file come from Autoformer
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/FrAug" ]; then
    mkdir ./logs/FrAug
fi
# aug: f_mask, f_mix
# rate: mask/mix rate

for testset_div in 20
do
for aug_data_size in 5
do
for data_size in 1
do
for aug in f_mask f_mix
do
for rate in 0.1 0.2 0.3 0.4 0.5
do
for pred_len in 24 36 48 60
do
for model_name in Autoformer Informer FEDformer
do 
for dataset in ILI
do
python -u run_continue.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path national_illness.csv \
    --model_id $dataset'_'36_$pred_len \
    --model $model_name \
    --data custom \
    --features M \
    --seq_len 36 \
    --label_len 18 \
    --pred_len $pred_len \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --itr 1 \
    --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
    --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
done
done
done
done
done
done
done
done

for testset_div in 20
do
for aug_data_size in 5
do
for data_size in 1
do
for aug in f_mask f_mix
do
for rate in 0.1 0.2 0.3 0.4 0.5
do
for pred_len in 96 192 336 720
do
for model_name in Autoformer Informer FEDformer
do 
for dataset in ETTh1 ETTh2
do
python -u run_continue.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path $dataset.csv \
  --model_id $dataset'_'$rate'_'336'_'$pred_len \
  --model $model_name \
  --data $dataset \
  --features M \
  --seq_len 96 \
  --pred_len $pred_len \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.005 \
  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
  --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
done
done
done
done
done
done
done
done

