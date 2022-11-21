for testset_div in 5
do
for aug_data_size in 49
do
for data_size in 1
do
for aug in f_mask f_mix
do
for rate in 0.1 0.2 0.3 0.4 0.5
do
seq_len=104
model_name=DLinear

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path national_illness.csv \
  --model_id national_illness_$seq_len'_'24 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 18 \
  --pred_len 24 \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'24'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path national_illness.csv \
  --model_id national_illness_$seq_len'_'36 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 18 \
  --pred_len 36 \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.01  --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'36'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path national_illness.csv \
  --model_id national_illness_$seq_len'_'48 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 18 \
  --pred_len 48 \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'48'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path national_illness.csv \
  --model_id national_illness_$seq_len'_'60 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 18 \
  --pred_len 60 \
  --enc_in 7 \
  --des 'Exp' \
  --itr 1 --batch_size 32 --learning_rate 0.01 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/DLinear/ILI'_'60'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log

done
done
done
done
done
