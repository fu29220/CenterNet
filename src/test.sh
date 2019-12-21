#!/bin/bash

# gpu ids
DEVICE_IDS=0,1,2,3
export CUDA_VISIBLE_DEVICES=$DEVICE_IDS

# exp_id
EXP_ID=person

# model.pth
LOAD_MODEL=../exp/ctdet/${EXP_ID}/model_best.pth

python test.py \
    ctdet \
    --exp_id ${EXP_ID} \
    --dataset coco_person \
    --arch dlav0_34 \
    --load_model ${LOAD_MODEL} \
    --down_ratio 8 \
    --gpus ${DEVICE_IDS}
