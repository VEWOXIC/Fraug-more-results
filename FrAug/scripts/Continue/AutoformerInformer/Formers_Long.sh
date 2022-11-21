# ALL scripts in this file come from Autoformer
if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/FrAug" ]; then
    mkdir ./logs/FrAug
fi
# aug: f_mask, f_mix
# rate: mask/mix rat
e
for testset_div in 5
do
for aug_data_size in 40
do
for data_size in 1
do
for aug in f_mask f_mix
do
for rate in 0.1 0.2 0.3 0.4 0.5
do
for model_name in Autoformer Informer FEDformer
do 
for pred_len in 24 36 48 60
do
  python -u run_continue.py \
    --is_training 1 \
    --root_path ./dataset/ \
    --data_path national_illness.csv \
    --model_id ili_36_$pred_len \
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
    --itr 1 --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/$model_name/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
done
done
done
done
done
done
done