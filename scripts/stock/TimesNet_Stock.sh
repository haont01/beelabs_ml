export CUDA_VISIBLE_DEVICES=0

model_name=TimesNet


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/stock \
  --data_path hours.csv \
  --model_id StockHours_128_128 \
  --model $model_name \
  --data stock \
  --features MS \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 1 \
  --d_model 16 \
  --d_ff 64 \
  --des 'Exp' \
  --itr 1 \
  --top_k 5 \
  --target close \
  --train_epochs 5