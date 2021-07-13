export CUDA_VISIBLE_DEVICES=1
cd ..
python -u run.py \
    --is_training False\
    --dataset_name action \
    --train_data_paths ../kth_action \
    --valid_data_paths ../kth_action \
    --save_dir checkpoints/kth_mim \
    --gen_frm_dir results/kth_mim \
    --model_name mim \
    --reverse_input 1 \
    --img_width 128 \
    --img_channel 1 \
    --input_length 10 \
    --seq_length 20 \
    --num_hidden 64,64,64,64 \
    --filter_size 5 \
    --stride 1 \
    --patch_size 4 \
    --layer_norm 0 \
    --lr 0.0003 \
    --batch_size 2 \
    --max_iterations 80000 \
    --display_interval 1 \
    --test_interval 10 \
    --snapshot_interval 5000\
    --pretrained_model checkpoints/kth_mim/model.ckpt-80000