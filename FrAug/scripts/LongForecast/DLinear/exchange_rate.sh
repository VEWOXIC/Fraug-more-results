# add --individual for DLinear-I
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/FrAug" ]; then
    mkdir ./logs/FrAug
fi
seq_len=336
model_name=DLinear
# aug: f_mask, f_mix
# rate: mask/mix rate
aug=f_mask
rate=0.5

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_$seq_len'_'96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 96 \
  --enc_in 8 \
  --des 'Exp' \
  --itr 1 --batch_size 4 --learning_rate 0.0005 --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_'Exchange_$seq_len'_'96_$aug'_'$rate.log 

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_$seq_len'_'192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 192 \
  --enc_in 8 \
  --des 'Exp' \
  --itr 1 --batch_size 4 --learning_rate 0.0005 --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_'Exchange_$seq_len'_'192_$aug'_'$rate.log 

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_$seq_len'_'336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 336 \
  --enc_in 8 \
  --des 'Exp' \
  --itr 1 --batch_size 16  --learning_rate 0.0005 --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_'Exchange_$seq_len'_'336_$aug'_'$rate.log 

python -u run_longExp.py \
  --is_training 1 \
  --root_path ./dataset/ \
  --data_path exchange_rate.csv \
  --model_id Exchange_$seq_len'_'720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --pred_len 720 \
  --enc_in 8 \
  --des 'Exp' \
  --itr 1 --batch_size 16 --learning_rate 0.0005  --in_batch_augmentation --aug_method  $aug --aug_rate $rate >logs/FrAug/$model_name'_'Exchange_$seq_len'_'720_$aug'_'$rate.log
