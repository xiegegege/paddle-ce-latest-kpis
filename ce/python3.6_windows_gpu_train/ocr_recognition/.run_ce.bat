@echo off
set ce_mode=1
set CUDA_VISIBLE_DEVICES=0
python train.py --model=crnn_ctc --total_step=100 --save_model_period=100 --eval_period=100 --log_period=100 --save_model_dir=output_ctc --use_gpu=True | python _ce.py
