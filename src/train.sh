#!/bin/bash

python main.py \
	ctdet \
	--dataset coco_person \
	--arch dlav0_34 \
	--down_ratio 8 \
	--batch_size 128 \
	--gpus 0,1,2,3 \
	--num_epochs 200 \
	--val_intervals 50
