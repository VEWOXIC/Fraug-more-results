# add --individual for DLinear-I
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/original" ]; then
    mkdir ./logs/original
fi
seq_len=336
model_name=DLinear

for aug_data_size in 0 1 49
do
for aug in f_mask f_mix
do
for rate in 0.1 0.2 0.3 0.4 0.5
do
python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path traffic.csv \
  --model_id traffic_$seq_len'_'96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 96 \
  --enc_in 862 \
  --des 'Exp' \
  --itr 1 --batch_size 16 --learning_rate 0.05 --in_dataset_augmentation --aug_method  $aug --aug_rate $rate --data_size 0.01 --aug_data_size $aug_data_size >logs/ColdStart/$model_name'_'$aug_data_size'_'$aug'_'$rate'_'traffic_$seq_len'_'96.log 

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path traffic.csv \
  --model_id traffic_$seq_len'_'192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 192 \
  --enc_in 862 \
  --des 'Exp' \
  --itr 1 --batch_size 16 --learning_rate 0.05   --in_dataset_augmentation --aug_method  $aug --aug_rate $rate --data_size 0.01 --aug_data_size $aug_data_size >logs/ColdStart/$model_name'_'$aug_data_size'_'$aug'_'$rate'_'traffic_$seq_len'_'192.log  

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path traffic.csv \
  --model_id traffic_$seq_len'_'336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 336 \
  --enc_in 862 \
  --des 'Exp' \
  --itr 1 --batch_size 16 --learning_rate 0.05   --in_dataset_augmentation --aug_method  $aug --aug_rate $rate --data_size 0.01 --aug_data_size $aug_data_size >logs/ColdStart/$model_name'_'$aug_data_size'_'$aug'_'$rate'_'traffic_$seq_len'_'336.log  

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path traffic.csv \
  --model_id traffic_$seq_len'_'720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 720 \
  --enc_in 862 \
  --des 'Exp' \
  --itr 1 --batch_size 16 --learning_rate 0.05  --in_dataset_augmentation --aug_method  $aug --aug_rate $rate --data_size 0.01 --aug_data_size $aug_data_size >logs/ColdStart/$model_name'_'$aug_data_size'_'$aug'_'$rate'_'traffic_$seq_len'_'720.log  
done
done
done