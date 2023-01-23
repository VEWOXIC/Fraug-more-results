for testset_div in 20
do
for aug_data_size in 5
do
for data_size in 1
do
for aug in f_mix
do
for rate in 0.4
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
# for rate in 0.2 0.4
# do
# for dataset in ETTh1 ETTh2
# do
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS_$aug \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'96'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS_$aug \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'192'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS_$aug \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'336'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS_$aug \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'720'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# done
# done
# done
# done
# done
# done

# # for testset_div in 20
# # do
# # for aug_data_size in 0
# # do
# # for data_size in 1
# # do
# # for aug in f_mask
# # do
# # for rate in 0
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
# # for aug_data_size in 0
# # do
# # for data_size in 1
# # do
# # for aug in f_mask
# # do
# # for rate in 0
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

# for testset_div in 20
# do
# for aug_data_size in 5
# do
# for data_size in 1
# do
# for aug in f_mask
# do
# for rate in 0.5
# do
# for pred_len in 192
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
# for aug in f_mask
# do
# for rate in 0.5
# do
# for pred_len in 336
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
# for aug in f_mix
# do
# for rate in 0.5
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
# for aug in f_mix
# do
# for rate in 0.5
# do
# for pred_len in 336
# do
# for model_name in FEDformer
# do 
# for dataset in ETTh1 ETTh2
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

# aug=f_mask
# model_name=DLinear
# seq_len=336
# seed=4

# for rate in 0.1 0.2 0.3 0.4 0.5
# do
# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path electricity.csv \
#   --model_id Electricity_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 321 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8  --learning_rate 0.001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'electricity_$seq_len'_'96_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path electricity.csv \
#   --model_id Electricity_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 321 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8  --learning_rate 0.001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'electricity_$seq_len'_'192_$aug'_'$rate.log  

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path electricity.csv \
#   --model_id Electricity_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 321 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8  --learning_rate 0.001   --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'electricity_$seq_len'_'336_$aug'_'$rate.log  

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path electricity.csv \
#   --model_id Electricity_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 321 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8  --learning_rate 0.001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'electricity_$seq_len'_'720_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data ETTh1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.005 --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Etth1_$seq_len'_'96_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data ETTh1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Etth1_$seq_len'_'192_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data ETTh1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Etth1_$seq_len'_'336_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh1.csv \
#   --model_id ETTh1_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data ETTh1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Etth1_$seq_len'_'720_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh2.csv \
#   --model_id ETTh2_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data ETTh2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.05  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTh2_$seq_len'_'96_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh2.csv \
#   --model_id ETTh2_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data ETTh2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.05  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTh2_$seq_len'_'192_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh2.csv \
#   --model_id ETTh2_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data ETTh2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.05  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTh2_$seq_len'_'336_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTh2.csv \
#   --model_id ETTh2_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data ETTh2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.05  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTh2_$seq_len'_'720_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm1.csv \
#   --model_id ETTm1_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data ETTm1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm1_$seq_len'_'96_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm1.csv \
#   --model_id ETTm1_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data ETTm1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm1_$seq_len'_'192_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm1.csv \
#   --model_id ETTm1_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data ETTm1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm1_$seq_len'_'336_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm1.csv \
#   --model_id ETTm1_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data ETTm1 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm1_$seq_len'_'720_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm2.csv \
#   --model_id ETTm2_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data ETTm2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm2_$seq_len'_'96_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm2.csv \
#   --model_id ETTm2_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data ETTm2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.001  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm2_$seq_len'_'192_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm2.csv \
#   --model_id ETTm2_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data ETTm2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.01  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm2_$seq_len'_'336_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path ETTm2.csv \
#   --model_id ETTm2_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data ETTm2 \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 7 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.01  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'ETTm2_$seq_len'_'720_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'96_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'192_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16  --learning_rate 0.0005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'336_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.0005   --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'720_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'96_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 4 --learning_rate 0.0005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'192_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16  --learning_rate 0.0005  --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'336_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path exchange_rate.csv \
#   --model_id Exchange_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 8 \
#   --des 'Exp' \
#   --itr 1 --batch_size 16 --learning_rate 0.0005   --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Exchange_$seq_len'_'720_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path traffic.csv \
#   --model_id traffic_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 862 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8 --learning_rate 0.05   --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'traffic_$seq_len'_'96_$aug'_'$rate.log 

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path traffic.csv \
#   --model_id traffic_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 862 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8 --learning_rate 0.05     --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'traffic_$seq_len'_'192_$aug'_'$rate.log  

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path traffic.csv \
#   --model_id traffic_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 862 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8 --learning_rate 0.05     --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'traffic_$seq_len'_'336_$aug'_'$rate.log  

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path traffic.csv \
#   --model_id traffic_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 862 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8 --learning_rate 0.05    --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'traffic_$seq_len'_'720_$aug'_'$rate.log  

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path weather.csv \
#   --model_id weather_$seed'_'$aug'_'96 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 96 \
#   --enc_in 21 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8 --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Weather_$seq_len'_'96_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path weather.csv \
#   --model_id weather_$seed'_'$aug'_'192 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 192 \
#   --enc_in 21 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8    --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Weather_$seq_len'_'192_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path weather.csv \
#   --model_id weather_$seed'_'$aug'_'336 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 336 \
#   --enc_in 21 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8    --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Weather_$seq_len'_'336_$aug'_'$rate.log

# python -u run_longExp.py \
#   --is_training 1 \
#   --root_path ./dataset/ \
#   --data_path weather.csv \
#   --model_id weather_$seed'_'$aug'_'720 \
#   --model $model_name \
#   --data custom \
#   --features M \
#   --seq_len $seq_len \
#   --pred_len 720 \
#   --enc_in 21 \
#   --des 'Exp' \
#   --itr 1 --batch_size 8    --seed $seed --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/DLinear_seed/$seed'_'$model_name'_'Weather_$seq_len'_'720_$aug'_'$rate.log
# done