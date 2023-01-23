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
for model_name in DLinear
do 
for dataset in ILI
do
seq_len=104
python -u run_continue.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path national_illness.csv \
  --model_id national_illness_$aug'_'48 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 104 \
  --label_len 18 \
  --pred_len $pred_len \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.01 \
  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
  --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_ILI_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log
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
for model_name in DLinear
do 
python -u run_continue.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_$rate'_'336'_'$pred_len \
  --model $model_name \
  --data ETTh1 \
  --features M \
  --seq_len 336 \
  --pred_len $pred_len \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.005 \
  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
  --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_Etth1_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log

python -u run_continue.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path ETTh2.csv \
  --model_id ETTh2_$rate'_'336'_'$pred_len \
  --model $model_name \
  --data ETTh2 \
  --features M \
  --seq_len 336 \
  --pred_len $pred_len \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.05 \
  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --closer_data_aug_more \
  --data_size $data_size --testset_div $testset_div >logs/Test_Train/DLinear_ETTh2_$pred_len'_'$aug'_'$testset_div'_'$aug_data_size'_'$rate.log

done
done
done
done
done
done
done