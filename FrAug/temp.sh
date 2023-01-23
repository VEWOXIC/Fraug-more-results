for testset_div in 20
do
for aug_data_size in 0
do
for data_size in 1
do
for aug in f_mask
do
for rate in 0 
do
for pred_len in 192
do
for model_name in FEDformer
do 
for dataset in ETTh1
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
# for aug in f_mask
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
# # for pred_len in 24 36 48 60
# # do
# # for model_name in DLinear
# # do 
# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$aug'_'48 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len 104 \
# #   --label_len 18 \
# #   --pred_len $pred_len \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 \
# #   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# #   --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_ILI_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
# # for model_name in Informer
# # do 
# # for dataset in ILI
# # do
# # for pred_len in 24 36 48 60
# # do
# # python -u run_continue.py \
# #     --is_training 1 \
# #     --root_path ./dataset/ \
# #     --data_path national_illness.csv \
# #     --model_id $dataset'_'36_$pred_len \
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

# # for testset_div in 20
# # do
# # for aug_data_size in 5
# # do
# # for data_size in 1
# # do
# # for aug in f_mix
# # do
# # for rate in 0.5
# # do
# # for pred_len in 336 720
# # do
# # for model_name in DLinear
# # do 
# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path ETTh1.csv \
# #   --model_id ETTh1_$rate'_'336'_'$pred_len \
# #   --model $model_name \
# #   --data ETTh1 \
# #   --features M \
# #   --seq_len 336 \
# #   --pred_len $pred_len \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.005 \
# #   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# #   --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_Etth1_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path ETTh2.csv \
# #   --model_id ETTh2_$rate'_'336'_'$pred_len \
# #   --model $model_name \
# #   --data ETTh2 \
# #   --features M \
# #   --seq_len 336 \
# #   --pred_len $pred_len \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.05 \
# #   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# #   --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_ETTh2_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log

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
# # for rate in 0.1 0.3 0.5
# # do
# # for pred_len in 24 36 48 60
# # do
# # for model_name in DLinear
# # do 
# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$aug'_'48 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len 104 \
# #   --label_len 18 \
# #   --pred_len $pred_len \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 \
# #   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
# #   --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_ILI_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
# # for aug in f_mask
# # do
# # for rate in 0.1
# # do
# # for model_name in Informer
# # do 
# # for dataset in ETTh2
# # do
# # for pred_len in 720
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

# for testset_div in 20
# do
# for aug_data_size in 5
# do
# for data_size in 1
# do
# for aug in f_mask f_mix
# do
# for rate in 0.1 0.3 0.5
# do
# for dataset in ETTh1 ETTh2
# do
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'96'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'192'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'336'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'720'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
# for rate in 0.1 0.3 0.5
# do
# for pred_len in 24 36 48 60
# do
# python run_longExp.py  --data_path national_illness.csv --data custom --features M  --seq_len 36 --pred_len  $pred_len --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_ILI'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
# for rate in 0.3
# do
# for model_name in Informer
# do 
# for dataset in ETTh1
# do
# for pred_len in 336 720
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
# for rate in 0.3
# do
# for model_name in Informer
# do 
# for dataset in ETTh2
# do
# for pred_len in 96 192 336 720
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
# for model_name in Informer
# do 
# for dataset in ETTh2
# do
# for pred_len in 96 192 336 720
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
# for rate in 0.3
# do
# for dataset in ETTh2
# do
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'336'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'720'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
# for dataset in ETTh1 ETTh2
# do
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'96'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'192'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'336'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
# python run_continue.py --data_path $dataset.csv --data $dataset --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_$dataset'_'720'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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

# for testset_div in 20
# do
# for aug_data_size in 0
# do
# for data_size in 1
# do
# for aug in f_mask
# do
# for rate in 0
# do
# for pred_len in 24 36 48 60
# do
# python run_continue.py  --label_len 4 --data_path national_illness.csv --data custom --features M  --seq_len 36 --pred_len  $pred_len --chunk_size  18 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS \
#   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
#   --data_size $data_size --testset_div $testset_div >logs/Test_Train/LightTS_ILI'_'$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
# for rate in 0.1 0.3 0.5
# do
# for model_name in Informer
# do 
# for dataset in ILI
# do
# for pred_len in 24 36 48 60
# do
# python -u run_continue.py \
#     --is_training 1 \
#     --root_path ./dataset/ \
#     --data_path national_illness.csv \
#     --model_id $dataset'_'36_$pred_len \
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

# # for testset_div in 5
# # do
# # for aug_data_size in 0
# # do
# # for data_size in 1
# # do
# # for aug in f_mask
# # do
# # for rate in 0
# # do
# # for pred_len in 24 36 48 60
# # do
# # for model_name in Autoformer
# # do 
# #   python -u run_continue.py \
# #     --is_training 1 \
# #     --root_path ./dataset/ \
# #     --data_path national_illness.csv \
# #     --model_id ili_36_$rate'_'$pred_len \
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
# #     --itr 1 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name'_gpu28'/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # done
# # done
# # done
# # done
# # done
# # done
# # done

# # for testset_div in 5
# # do
# # for aug_data_size in 49
# # do
# # for data_size in 1
# # do
# # for aug in f_mask f_mix
# # do
# # for rate in 0 0.1 0.2 0.3 0.4 0.5
# # do
# # for pred_len in 24 36 48 60
# # do
# # for model_name in Autoformer
# # do 
# #   python -u run_continue.py \
# #     --is_training 1 \
# #     --root_path ./dataset/ \
# #     --data_path national_illness.csv \
# #     --model_id ili_36_$rate'_'$pred_len \
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
# #     --itr 1 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name'_gpu28'/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # done
# # done
# # done
# # done
# # done
# # done
# # done

# # for testset_div in 5
# # do
# # for aug_data_size in 0
# # do
# # for data_size in 1
# # do
# # for aug in f_mask
# # do
# # for pred_len in 24 36 48 60
# # do
# # for rate in 0
# # do
# # python run_continue.py  --data_path national_illness.csv --data custom --features M  --seq_len 52 --pred_len $pred_len --chunk_size 26 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/LightTS_gpu28/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # done
# # done
# # done
# # done
# # done
# # done

# # for testset_div in 5
# # do
# # for aug_data_size in 49
# # do
# # for data_size in 1
# # do
# # for aug in f_mask f_mix
# # do
# # for pred_len in 24 36 48 60
# # do
# # for rate in 0 0.1 0.2 0.3 0.4 0.5
# # do
# # python run_continue.py  --data_path national_illness.csv --data custom --features M  --seq_len 52 --pred_len $pred_len --chunk_size 26 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/LightTS_gpu28/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # done
# # done
# # done
# # done
# # done
# # done

# # for testset_div in 5
# # do
# # for aug_data_size in 0
# # do
# # for data_size in 1
# # do
# # for aug in f_mask
# # do
# # for rate in 0
# # do
# # seq_len=52
# # model_name=DLinear

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'24 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 24 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'24'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'36 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 36 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'36'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'48 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 48 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'48'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'60 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 60 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'60'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # done
# # done
# # done
# # done
# # done

# # for testset_div in 5
# # do
# # for aug_data_size in 49
# # do
# # for data_size in 1
# # do
# # for aug in f_mask f_mix
# # do
# # for rate in 0 0.1 0.2 0.3 0.4 0.5
# # do
# # seq_len=52
# # model_name=DLinear

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'24 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 24 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'24'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'36 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 36 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'36'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'48 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 48 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'48'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # python -u run_continue.py \
# #   --is_training 1 \
# #   --root_path ./dataset/ \
# #   --data_path national_illness.csv \
# #   --model_id national_illness_$rate'_'$seq_len'_'60 \
# #   --model $model_name \
# #   --data custom \
# #   --features M \
# #   --seq_len $seq_len \
# #   --label_len 18 \
# #   --pred_len 60 \
# #   --enc_in 7 \
# #   --des 'Exp' \
# #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear_gpu28/ILI'_'60'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # done
# # done
# # done
# # done
# # done

# # # # ALL scripts in this file come from Autoformer
# # # # aug: f_mask, f_mix
# # # # rate: mask/mix rate

# # # # for testset_div in 5
# # # # do
# # # # for aug_data_size in 0 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask
# # # # do
# # # # for rate in 0
# # # # do
# # # # seq_len=336
# # # # model_name=DLinear

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh1.csv \
# # # #   --model_id ETTh1_$rate'_'$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTh1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 96 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh1.csv \
# # # #   --model_id ETTh1_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data ETTh1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh1.csv \
# # # #   --model_id ETTh1_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data ETTh1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh1.csv \
# # # #   --model_id ETTh1_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data ETTh1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh2.csv \
# # # #   --model_id ETTh2_$rate'_'$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTh2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 96 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh2.csv \
# # # #   --model_id ETTh2_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data ETTh2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh2.csv \
# # # #   --model_id ETTh2_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data ETTh2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTh2.csv \
# # # #   --model_id ETTh2_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data ETTh2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 96 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 96 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.001 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.001 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # ython -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path exchange_rate.csv \
# # # #   --model_id Exchange_$rate'_'$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 96 \
# # # #   --enc_in 8 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path exchange_rate.csv \
# # # #   --model_id Exchange_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 8 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path exchange_rate.csv \
# # # #   --model_id Exchange_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 8 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32  --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path exchange_rate.csv \
# # # #   --model_id Exchange_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 8 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # done
# # # # done
# # # # done
# # # # done
# # # # done

# # # for testset_div in 5
# # # do
# # # for aug_data_size in 0 49
# # # do
# # # for data_size in 1
# # # do
# # # for aug in f_mask
# # # do
# # # for rate in 0
# # # do
# # # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log 

# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len  96 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len 192 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len 336 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len 720 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # done
# # # done
# # # done
# # # done
# # # done

# # # for testset_div in 5
# # # do
# # # for aug_data_size in 0 49
# # # do
# # # for data_size in 1
# # # do
# # # for aug in f_mask
# # # do
# # # for rate in 0
# # # do
# # # for pred_len in 96 192 336 720
# # # do
# # # for model_name in Autoformer Informer FEDformer
# # # do 
# # # python -u run_continue.py \
# # #     --is_training 1 \
# # #     --root_path ./dataset/ \
# # #     --data_path exchange_rate.csv \
# # #     --model_id exchange_$rate'_'$pred_len \
# # #     --model $model_name \
# # #     --data custom \
# # #     --features M \
# # #     --seq_len 96 \
# # #     --label_len 48 \
# # #     --pred_len $pred_len \
# # #     --e_layers 2 \
# # #     --d_layers 1 \
# # #     --factor 3 \
# # #     --enc_in 8 \
# # #     --dec_in 8 \
# # #     --c_out 8 \
# # #     --des 'Exp' \
# # #     --itr 1 --aug_method $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/exchange'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #       --is_training 1 \
# # #       --root_path ./dataset/ \
# # #       --data_path ETTh1.csv \
# # #       --model_id ETTh1_$rate'_'$pred_len \
# # #       --model $model_name \
# # #       --data ETTh1 \
# # #       --features M \
# # #       --seq_len 96 \
# # #       --label_len 48 \
# # #       --pred_len $pred_len \
# # #       --e_layers 2 \
# # #       --d_layers 1 \
# # #       --factor 3 \
# # #       --enc_in 7 \
# # #       --dec_in 7 \
# # #       --c_out 7 \
# # #       --des 'Exp' \
# # #       --itr 1  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTh1'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
  
# # #   python -u run_continue.py \
# # #       --is_training 1 \
# # #       --root_path ./dataset/ \
# # #       --data_path ETTh2.csv \
# # #       --model_id ETTh2_$rate'_'$pred_len \
# # #       --model $model_name \
# # #       --data ETTh2 \
# # #       --features M \
# # #       --seq_len 96 \
# # #       --label_len 48 \
# # #       --pred_len $pred_len \
# # #       --e_layers 2 \
# # #       --d_layers 1 \
# # #       --factor 3 \
# # #       --enc_in 7 \
# # #       --dec_in 7 \
# # #       --c_out 7 \
# # #       --des 'Exp' \
# # #       --itr 1   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTh2'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
  
# # #   # python -u run_continue.py \
# # #   #     --is_training 1 \
# # #   #     --root_path ./dataset/ \
# # #   #     --data_path ETTm1.csv \
# # #   #     --model_id ETTm1_$rate'_'$pred_len \
# # #   #     --model $model_name \
# # #   #     --data ETTm1 \
# # #   #     --features M \
# # #   #     --seq_len 96 \
# # #   #     --label_len 48 \
# # #   #     --pred_len $pred_len \
# # #   #     --e_layers 2 \
# # #   #     --d_layers 1 \
# # #   #     --factor 3 \
# # #   #     --enc_in 7 \
# # #   #     --dec_in 7 \
# # #   #     --c_out 7 \
# # #   #     --des 'Exp' \
# # #   #     --itr 1  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTm1'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # #   # python -u run_continue.py \
# # #   #     --is_training 1 \
# # #   #     --root_path ./dataset/ \
# # #   #     --data_path ETTm2.csv \
# # #   #     --model_id ETTm2_$rate'_'$pred_len \
# # #   #     --model $model_name \
# # #   #     --data ETTm2 \
# # #   #     --features M \
# # #   #     --seq_len 96 \
# # #   #     --label_len 48 \
# # #   #     --pred_len $pred_len \
# # #   #     --e_layers 2 \
# # #   #     --d_layers 1 \
# # #   #     --factor 3 \
# # #   #     --enc_in 7 \
# # #   #     --dec_in 7 \
# # #   #     --c_out 7 \
# # #   #     --des 'Exp' \
# # #   #     --itr 1  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTm2'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # done
# # # done
# # # done
# # # done
# # # done
# # # done
# # # done


# # # for testset_div in 5
# # # do
# # # for aug_data_size in 49
# # # do
# # # for data_size in 1
# # # do
# # # for aug in f_mask f_mix
# # # do
# # # for rate in 0.5
# # # do
# # # seq_len=336
# # # model_name=DLinear

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh1.csv \
# # #   --model_id ETTh1_$rate'_'$seq_len'_'96 \
# # #   --model $model_name \
# # #   --data ETTh1 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 96 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh1.csv \
# # #   --model_id ETTh1_$rate'_'$seq_len'_'192 \
# # #   --model $model_name \
# # #   --data ETTh1 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 192 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh1.csv \
# # #   --model_id ETTh1_$rate'_'$seq_len'_'336 \
# # #   --model $model_name \
# # #   --data ETTh1 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 336 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh1.csv \
# # #   --model_id ETTh1_$rate'_'$seq_len'_'720 \
# # #   --model $model_name \
# # #   --data ETTh1 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 720 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --learning_rate 0.005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh2.csv \
# # #   --model_id ETTh2_$rate'_'$seq_len'_'96 \
# # #   --model $model_name \
# # #   --data ETTh2 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 96 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh2.csv \
# # #   --model_id ETTh2_$rate'_'$seq_len'_'192 \
# # #   --model $model_name \
# # #   --data ETTh2 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 192 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh2.csv \
# # #   --model_id ETTh2_$rate'_'$seq_len'_'336 \
# # #   --model $model_name \
# # #   --data ETTh2 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 336 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTh2.csv \
# # #   --model_id ETTh2_$rate'_'$seq_len'_'720 \
# # #   --model $model_name \
# # #   --data ETTh2 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 720 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32 --learning_rate 0.05  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTh2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path ETTm1.csv \
# # #   --model_id ETTm1_$rate'_'$seq_len'_'96 \
# # #   --model $model_name \
# # #   --data ETTm1 \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 96 \
# # #   --enc_in 7 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 8 --learning_rate 0.0001  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm1.csv \
# # # #   --model_id ETTm1_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data ETTm1 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 8 --learning_rate 0.0001  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'96 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 96 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.001 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'192 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 192 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.001 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'336 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 336 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path ETTm2.csv \
# # # #   --model_id ETTm2_$rate'_'$seq_len'_'720 \
# # # #   --model $model_name \
# # # #   --data ETTm2 \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --pred_len 720 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/ETTm2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # #   python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path exchange_rate.csv \
# # #   --model_id Exchange_$rate'_'$seq_len'_'96 \
# # #   --model $model_name \
# # #   --data custom \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 96 \
# # #   --enc_in 8 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 8 --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path exchange_rate.csv \
# # #   --model_id Exchange_$rate'_'$seq_len'_'192 \
# # #   --model $model_name \
# # #   --data custom \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 192 \
# # #   --enc_in 8 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 8 --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path exchange_rate.csv \
# # #   --model_id Exchange_$rate'_'$seq_len'_'336 \
# # #   --model $model_name \
# # #   --data custom \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 336 \
# # #   --enc_in 8 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32  --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #   --is_training 1 \
# # #   --root_path ./dataset/ \
# # #   --data_path exchange_rate.csv \
# # #   --model_id Exchange_$rate'_'$seq_len'_'720 \
# # #   --model $model_name \
# # #   --data custom \
# # #   --features M \
# # #   --seq_len $seq_len \
# # #   --pred_len 720 \
# # #   --enc_in 8 \
# # #   --des 'Exp' \
# # #   --itr 1 --batch_size 32 --learning_rate 0.0005 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/DLinear/exchange'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # done
# # # done
# # # done
# # # done
# # # done

# # # for testset_div in 5
# # # do
# # # for aug_data_size in 49
# # # do
# # # for data_size in 1
# # # do
# # # for aug in f_mask f_mix
# # # do
# # # for rate in 0.5
# # # do
# # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data_path ETTh2.csv --data ETTh2 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTh2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log 

# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm1.csv --data ETTm1 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm1'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 192 --pred_len  96 --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 720 --pred_len 192 --chunk_size  72 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 720 --pred_len 336 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # python run_continue.py --data_path ETTm2.csv --data ETTm2 --features M  --seq_len 720 --pred_len 720 --chunk_size  72 --d_model 128 --learning_rate 1e-5 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/ETTm2'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len  96 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'96'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len 192 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'192'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len 336 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'336'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # python run_continue.py --data custom --enc_in 8 --data_path exchange_rate.csv --seq_len 98 --pred_len 720 --d_model 64 --chunk_size 7 --learning_rate 1e-3 --model 'LightTS' --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div  >logs/continue/LightTS/exchange'_'720'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # done
# # # done
# # # done
# # # done
# # # done

# # # for testset_div in 5
# # # do
# # # for aug_data_size in 49
# # # do
# # # for data_size in 1
# # # do
# # # for aug in f_mask f_mix
# # # do
# # # for rate in 0.5
# # # do
# # # for pred_len in 96 192 336 720
# # # do
# # # for model_name in Autoformer Informer FEDformer
# # # do 
# # # python -u run_continue.py \
# # #     --is_training 1 \
# # #     --root_path ./dataset/ \
# # #     --data_path exchange_rate.csv \
# # #     --model_id exchange_$rate'_'$pred_len \
# # #     --model $model_name \
# # #     --data custom \
# # #     --features M \
# # #     --seq_len 96 \
# # #     --label_len 48 \
# # #     --pred_len $pred_len \
# # #     --e_layers 2 \
# # #     --d_layers 1 \
# # #     --factor 3 \
# # #     --enc_in 8 \
# # #     --dec_in 8 \
# # #     --c_out 8 \
# # #     --des 'Exp' \
# # #     --itr 1 --aug_method $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/exchange'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # python -u run_continue.py \
# # #       --is_training 1 \
# # #       --root_path ./dataset/ \
# # #       --data_path ETTh1.csv \
# # #       --model_id ETTh1_$rate'_'$pred_len \
# # #       --model $model_name \
# # #       --data ETTh1 \
# # #       --features M \
# # #       --seq_len 96 \
# # #       --label_len 48 \
# # #       --pred_len $pred_len \
# # #       --e_layers 2 \
# # #       --d_layers 1 \
# # #       --factor 3 \
# # #       --enc_in 7 \
# # #       --dec_in 7 \
# # #       --c_out 7 \
# # #       --des 'Exp' \
# # #       --itr 1  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTh1'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
  
# # #   python -u run_continue.py \
# # #       --is_training 1 \
# # #       --root_path ./dataset/ \
# # #       --data_path ETTh2.csv \
# # #       --model_id ETTh2_$rate'_'$pred_len \
# # #       --model $model_name \
# # #       --data ETTh2 \
# # #       --features M \
# # #       --seq_len 96 \
# # #       --label_len 48 \
# # #       --pred_len $pred_len \
# # #       --e_layers 2 \
# # #       --d_layers 1 \
# # #       --factor 3 \
# # #       --enc_in 7 \
# # #       --dec_in 7 \
# # #       --c_out 7 \
# # #       --des 'Exp' \
# # #       --itr 1   --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTh2'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
  
# # #   # python -u run_continue.py \
# # #   #     --is_training 1 \
# # #   #     --root_path ./dataset/ \
# # #   #     --data_path ETTm1.csv \
# # #   #     --model_id ETTm1_$rate'_'$pred_len \
# # #   #     --model $model_name \
# # #   #     --data ETTm1 \
# # #   #     --features M \
# # #   #     --seq_len 96 \
# # #   #     --label_len 48 \
# # #   #     --pred_len $pred_len \
# # #   #     --e_layers 2 \
# # #   #     --d_layers 1 \
# # #   #     --factor 3 \
# # #   #     --enc_in 7 \
# # #   #     --dec_in 7 \
# # #   #     --c_out 7 \
# # #   #     --des 'Exp' \
# # #   #     --itr 1  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTm1'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # #   # python -u run_continue.py \
# # #   #     --is_training 1 \
# # #   #     --root_path ./dataset/ \
# # #   #     --data_path ETTm2.csv \
# # #   #     --model_id ETTm2_$rate'_'$pred_len \
# # #   #     --model $model_name \
# # #   #     --data ETTm2 \
# # #   #     --features M \
# # #   #     --seq_len 96 \
# # #   #     --label_len 48 \
# # #   #     --pred_len $pred_len \
# # #   #     --e_layers 2 \
# # #   #     --d_layers 1 \
# # #   #     --factor 3 \
# # #   #     --enc_in 7 \
# # #   #     --dec_in 7 \
# # #   #     --c_out 7 \
# # #   #     --des 'Exp' \
# # #   #     --itr 1  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ETTm2'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # done
# # # done
# # # done
# # # done
# # # done
# # # done
# # # done

# # # # for testset_div in 2 5 10
# # # # do
# # # # for aug_data_size in 0 1 9 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask
# # # # do
# # # # for rate in 0
# # # # do
# # # # seq_len=104
# # # # model_name=DLinear

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'24 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 24 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'24'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'36 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 36 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'36'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'48 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 48 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'48'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'60 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 60 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'60'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done


# # # # for testset_div in 2 5 10
# # # # do
# # # # for aug_data_size in 0 1 9 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask
# # # # do
# # # # for pred_len in 24 36 48 60
# # # # do
# # # # for rate in 0
# # # # do
# # # # python run_continue.py  --data_path national_illness.csv --data custom --features M  --seq_len 52 --pred_len $pred_len --chunk_size 26 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/LightTS/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done

# # # # for testset_div in 2 5 10
# # # # do
# # # # for aug_data_size in 0 1 9 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask
# # # # do
# # # # for rate in 0
# # # # do
# # # # for pred_len in 24 36 48 60
# # # # do
# # # # for model_name in Autoformer Informer
# # # # do 
# # # #   python -u run_continue.py \
# # # #     --is_training 1 \
# # # #     --root_path ./dataset/ \
# # # #     --data_path national_illness.csv \
# # # #     --model_id ili_36_$rate'_'$pred_len \
# # # #     --model $model_name \
# # # #     --data custom \
# # # #     --features M \
# # # #     --seq_len 36 \
# # # #     --label_len 18 \
# # # #     --pred_len $pred_len \
# # # #     --e_layers 2 \
# # # #     --d_layers 1 \
# # # #     --factor 3 \
# # # #     --enc_in 7 \
# # # #     --dec_in 7 \
# # # #     --c_out 7 \
# # # #     --des 'Exp' \
# # # #     --itr 1 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done

# # # # for testset_div in 2 5 10
# # # # do
# # # # for aug_data_size in 1 9 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask f_mix
# # # # do
# # # # for rate in 0.5
# # # # do
# # # # seq_len=104
# # # # model_name=DLinear

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'24 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 24 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'24'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'36 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 36 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'36'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'48 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 48 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'48'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

# # # # python -u run_continue.py \
# # # #   --is_training 1 \
# # # #   --root_path ./dataset/ \
# # # #   --data_path national_illness.csv \
# # # #   --model_id national_illness_$rate'_'$seq_len'_'60 \
# # # #   --model $model_name \
# # # #   --data custom \
# # # #   --features M \
# # # #   --seq_len $seq_len \
# # # #   --label_len 18 \
# # # #   --pred_len 60 \
# # # #   --enc_in 7 \
# # # #   --des 'Exp' \
# # # #   --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'60'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done


# # # # for testset_div in 2 5 10
# # # # do
# # # # for aug_data_size in 1 9 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask f_mix
# # # # do
# # # # for pred_len in 24 36 48 60
# # # # do
# # # # for rate in 0.5
# # # # do
# # # # python run_continue.py  --data_path national_illness.csv --data custom --features M  --seq_len 52 --pred_len $pred_len --chunk_size 26 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/LightTS/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done

# # # # for testset_div in 2 5 10
# # # # do
# # # # for aug_data_size in 1 9 49
# # # # do
# # # # for data_size in 1
# # # # do
# # # # for aug in f_mask f_mix
# # # # do
# # # # for rate in 0.5
# # # # do
# # # # for pred_len in 24 36 48 60
# # # # do
# # # # for model_name in Autoformer Informer
# # # # do 
# # # #   python -u run_continue.py \
# # # #     --is_training 1 \
# # # #     --root_path ./dataset/ \
# # # #     --data_path national_illness.csv \
# # # #     --model_id ili_36_$rate'_'$pred_len \
# # # #     --model $model_name \
# # # #     --data custom \
# # # #     --features M \
# # # #     --seq_len 36 \
# # # #     --label_len 18 \
# # # #     --pred_len $pred_len \
# # # #     --e_layers 2 \
# # # #     --d_layers 1 \
# # # #     --factor 3 \
# # # #     --enc_in 7 \
# # # #     --dec_in 7 \
# # # #     --c_out 7 \
# # # #     --des 'Exp' \
# # # #     --itr 1 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done
# # # # done

