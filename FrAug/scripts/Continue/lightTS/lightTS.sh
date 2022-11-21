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
for pred_len in 24 36 48 60
do
python run_longExp.py  --data_path ETTh1.csv --data ETTh1 --features M  --seq_len 36 --pred_len  $pred_len --chunk_size  48 --d_model 128 --learning_rate 1e-4 --model 'LightTS'  --is_training 1 --itr 1 --model_id FrAUG_LightTS'_'$rate'_'$aug --aug_method  $aug --aug_rate $rate --aug_data_size $aug_data_size --data_size $data_size --testset_div $testset_div >logs/continue/LightTS/ILI'_'$pred_len'_'$testset_div'_'$data_size'_'$aug_data_size'_'$aug'_'$rate.log
done
done
done
done
done
done