for testset_div in 20
do
for aug_data_size in 5
do
for data_size in 1
do
for aug in f_mix
do
for rate in 0.2 
do
for pred_len in 720
do
for model_name in FEDformer
do 
for dataset in ETTh2
do
python -u run_continue.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path $dataset.csv \
  --model_id $dataset'_'$rate'_'336'_'$aug \
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

# for testset_div in 20
# do
# for aug_data_size in 5
# do
# for data_size in 1
# do
# for aug in f_mix
# do
# for rate in 0.3
# do
# for pred_len in 720
# do
# for model_name in Autoformer 
# do 
# for dataset in ETTh2
# do
# python -u run_continue.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path $dataset.csv \
#   --model_id $dataset'_'$rate'_'336'_'$pred_len \
#   --model $model_name \
#   --data $dataset \
#   --features M \
#   --seq_len 96 \
#   --pred_len $pred_len \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 32 --learning_rate 0.005 \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# done
# done
# done
# done
# done
# done
# done
# done


# for testset_div in 20
# do
# for aug_data_size in 5
# do
# for data_size in 1
# do
# for aug in f_mask f_mix
# do
# for rate in 0.5
# do
# for model_name in Autoformer FEDformer
# do 
# for dataset in ILI
# do
# for pred_len in 24 36 48 60
# do
# python -u run_continue.py \
#     --is_training 1 \
#     --root_path ./dataset/ \
#     --data_path national_illness.csv \
#     --model_id $dataset'_'36_$aug \
#     --model $model_name \
#     --data custom \
#     --features M \
#     --seq_len 36 \
#     --label_len 18 \
#     --pred_len $pred_len \
#     --e_layers 2 \
#     --d_layers 1 \
#     --factor 3 \
#     --enc_in 7 \
#     --dec_in 7 \
#     --c_out 7 \
#     --des 'Exp' \
#     --itr 1 \
#     --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#     --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# done
# done
# done
# done
# done
# done
# done
# done

# # # for testset_div in 20
# # # do
# # # for aug_data_size in 5
# # # do
# # # for data_size in 1
# # # do
# # # for aug in f_mask
# # # do
# # # for rate in 0.3
# # # do
# # # for pred_len in 720
# # # do
# # # for model_name in  Autoformer
# # # do 
# # # for dataset in ETTh2
# # # do
# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path $dataset.csv \
# # #   --model_id $dataset'_'$rate'_'336'_'$pred_len \
# # #   --model $model_name \
# # #   --data $dataset \
# # #   --features M \
# # #   --seq_len 96 \
# # #   --pred_len $pred_len \
# # #   --e_layers 2 \
# # #   --d_layers 1 \
# # #   --factor 3 \
# # #   --enc_in 7 \
# # #   --dec_in 7 \
# # #   --c_out 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32 --learning_rate 0.005 \
# # #   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# # #   --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# # # done
# # # done
# # # done
# # # done
# # # done
# # # done
# # # done
# # # done

# # for testset_div in 20
# # do
# # for aug_data_size in 5
# # do
# # for data_size in 1
# # do
# # for aug in f_mask
# # do
# # for rate in 0.3
# # do
# # for pred_len in 720
# # do
# # for model_name in FEDformer
# # do 
# # for dataset in ETTh2
# # do
# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path $dataset.csv \
# #   --model_id $dataset'_'$rate'_'336'_'$pred_len \
# #   --model $model_name \
# #   --data $dataset \
# #   --features M \
# #   --seq_len 96 \
# #   --pred_len $pred_len \
# #   --e_layers 2 \
# #   --d_layers 1 \
# #   --factor 3 \
# #   --enc_in 7 \
# #   --dec_in 7 \
# #   --c_out 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.005 \
# #   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# #   --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# # done
# # done
# # done
# # done
# # done
# # done
# # done
# # done


# # for testset_div in 20
# # do
# # for aug_data_size in 5
# # do
# # for data_size in 1
# # do
# # for aug in f_mask f_mix
# # do
# # for rate in 0.3
# # do
# # for model_name in Autoformer FEDformer
# # do 
# # for dataset in ILI
# # do
# # for pred_len in 24 36 48 60
# # do
# # python -u run_continue.py \
# #     --is_training 1 \
# #     --root_path ./dataset/ \
# #     --data_path national_illness.csv \
# #     --model_id $dataset'_'36_$aug \
# #     --model $model_name \
# #     --data custom \
# #     --features M \
# #     --seq_len 36 \
# #     --label_len 18 \
# #     --pred_len $pred_len \
# #     --e_layers 2 \
# #     --d_layers 1 \
# #     --factor 3 \
# #     --enc_in 7 \
# #     --dec_in 7 \
# #     --c_out 7 \
# #     --des 'Exp' \
# #     --itr 1 \
# #     --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# #     --data_size $data_size --testset_div $testset_div >logs/Test_Train/$model_name'_'$dataset'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# # done
# # done
# # done
# # done
# # done
# # done
# # done
# # done

# # # # for aug in f_mask f_mix
# # # # do
# # # # for rate in 0.1 0.2 0.3 0.4 0.5
# # # # do
# # # # for pred_len in 96 192 336 720
# # # # do
# # # # python -u run_longExp.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh1.csv \
# # # #   --model_id ETTh1_$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTh1 \
# # # #   --features M \
# # # #   --seq_len 336 \
# # # #   --pred_len $pred_len \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 16 --learning_rate 0.005 --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_h1/$model_name'_Etth1_'$pred_len'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done

# # # # for rate in 0
# # # # do
# # # # for aug in mask_seg warp
# # # # do
# # # # for model_name in Informer Autoformer FEDformer
# # # # do 
# # # # for pred_len in 96
# # # # do
# # # #   python -u run_longExp.py \
# # # #       --is_training 1 \
# # # #       --root_path ./dataset/ \
# # # #       --data_path ETTh1.csv \
# # # #       --model_id ETTh1_96_$pred_len \
# # # #       --model $model_name \
# # # #       --data ETTh1 \
# # # #       --features M \
# # # #       --seq_len 96 \
# # # #       --label_len 48 \
# # # #       --pred_len $pred_len \
# # # #       --e_layers 2 \
# # # #       --d_layers 1 \
# # # #       --factor 3 \
# # # #       --enc_in 7 \
# # # #       --dec_in 7 \
# # # #       --c_out 7 \
# # # #       --des 'Exp' \
# # # #       --itr 1  --batch_size 16  --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_Etth1_'$pred_len'_'$aug'_d5_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done

# # # model_name=DLinear

# # # for aug in noise_input noise
# # # do
# # # # python -u run_longExp.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh1.csv \
# # # #   --model_id ETTh1_$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTh1 \
# # # #   --features M \
# # # #   --seq_len 336 \
# # # #   --pred_len 96 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.005 --in_batch_augmentation --aug_method $aug --aug_rate 0 >logs/FrAug/$model_name'_new_'Etth1_336'_'96_$aug'_'0.log

# # # #   python run_longExp.py --batch_size 32 --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --in_batch_augmentation --aug_method  $aug --aug_rate 0 >logs/FrAug/lightTS/$aug'_'0'_'ETTh1_96.log 

# # #   # python -u run_longExp.py \
# # #   #     --is_training 1 \
# # #   #     --root_path ./dataset/ \
# # #   #     --data_path ETTh1.csv \
# # #   #     --model_id ETTh1_96_96 \
# # #   #     --model FEDformer \
# # #   #     --data ETTh1 \
# # #   #     --features M \
# # #   #     --seq_len 96 \
# # #   #     --label_len 48 \
# # #   #     --pred_len 96 \
# # #   #     --e_layers 2 \
# # #   #     --d_layers 1 \
# # #   #     --factor 3 \
# # #   #     --enc_in 7 \
# # #   #     --dec_in 7 \
# # #   #     --c_out 7 \
# # #   #     --des 'Exp' \
# # #   #     --itr 1  --in_batch_augmentation --aug_method $aug --aug_rate 0 >logs/FrAug/FEDformer'_new_'Etth1_336'_'96_$aug'_'0.log
  
# # #   # python -u run_longExp.py \
# # #   #     --is_training 1 \
# # #   #     --root_path ./dataset/ \
# # #   #     --data_path ETTh1.csv \
# # #   #     --model_id ETTh1_96_96 \
# # #   #     --model Informer \
# # #   #     --data ETTh1 \
# # #   #     --features M \
# # #   #     --seq_len 96 \
# # #   #     --label_len 48 \
# # #   #     --pred_len 96 \
# # #   #     --e_layers 2 \
# # #   #     --d_layers 1 \
# # #   #     --factor 3 \
# # #   #     --enc_in 7 \
# # #   #     --dec_in 7 \
# # #   #     --c_out 7 \
# # #   #     --des 'Exp' \
# # #   #     --itr 1  --in_batch_augmentation --aug_method $aug --aug_rate 0 >logs/FrAug/Informer'_new_'Etth1_336'_'96_$aug'_'0.log

  
# # #   python -u run_longExp.py \
# # #       --is_training 1 \
# # #       --root_path ./dataset/ \
# # #       --data_path ETTh1.csv \
# # #       --model_id ETTh1_96_96 \
# # #       --model Autoformer \
# # #       --data ETTh1 \
# # #       --features M \
# # #       --seq_len 96 \
# # #       --label_len 48 \
# # #       --pred_len 96 \
# # #       --e_layers 2 \
# # #       --d_layers 1 \
# # #       --factor 3 \
# # #       --enc_in 7 \
# # #       --dec_in 7 \
# # #       --c_out 7 \
# # #       --des 'Exp' \
# # #       --itr 1  --in_batch_augmentation --aug_method $aug --aug_rate 0 >logs/FrAug/Autoformer'_new_'Etth1_336'_'96_$aug'_'0.log
# # # done

# # # # aug=f_mask
# # # # rate=0.5

# # # # for rate in 0.3
# # # # do
# # # # for model_name in FEDformer
# # # # do 
# # # # for pred_len in 720
# # # # do
# # # #   python -u run_longExp.py \
# # # #       --is_training 1 \
# # # #       --root_path ./dataset/ \
# # # #       --data_path ETTh1.csv \
# # # #       --model_id ETTh1_96_$pred_len \
# # # #       --model $model_name \
# # # #       --data ETTh1 \
# # # #       --features M \
# # # #       --seq_len 96 \
# # # #       --label_len 48 \
# # # #       --pred_len $pred_len \
# # # #       --e_layers 2 \
# # # #       --d_layers 1 \
# # # #       --factor 3 \
# # # #       --enc_in 7 \
# # # #       --dec_in 7 \
# # # #       --c_out 7 \
# # # #       --des 'Exp' \
# # # #       --itr 1  --batch_size 16  --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_Etth1_'$pred_len'_'$aug'_d5_'$rate.log
# # # # done
# # # # done
# # # # done

# # # # for rate in 0.4 0.5
# # # # do
# # # # for model_name in FEDformer
# # # # do 
# # # # for pred_len in 96 192 336 720
# # # # do
# # # #   python -u run_longExp.py \
# # # #       --is_training 1 \
# # # #       --root_path ./dataset/ \
# # # #       --data_path ETTh1.csv \
# # # #       --model_id ETTh1_96_$pred_len \
# # # #       --model $model_name \
# # # #       --data ETTh1 \
# # # #       --features M \
# # # #       --seq_len 96 \
# # # #       --label_len 48 \
# # # #       --pred_len $pred_len \
# # # #       --e_layers 2 \
# # # #       --d_layers 1 \
# # # #       --factor 3 \
# # # #       --enc_in 7 \
# # # #       --dec_in 7 \
# # # #       --c_out 7 \
# # # #       --des 'Exp' \
# # # #       --itr 1  --batch_size 16  --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_Etth1_'$pred_len'_'$aug'_d5_'$rate.log
# # # # done
# # # # done
# # # # done