#!/bin/bash


# gpu ids
DEVICE_IDS=0,1,2,3
export CUDA_VISIBLE_DEVICES=$DEVICE_IDS

python main.py \
    ctdet \
    --exp_id person \
    --dataset coco_person \
    --arch dlav0_34 \
    --down_ratio 8 \
    --batch_size 128 \
    --gpus ${DEVICE_IDS} \
    --num_epochs 200 \
    --val_intervals 50
