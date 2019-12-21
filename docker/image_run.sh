#!/bin/bash

WORK_DIR=$(pwd)
docker run \
    --name=fsl_det_qhaicv \
    --runtime=nvidia \
    --net=host \
    --ipc=host \
    -it \
    -v ${WORK_DIR}:/works/CenterNet \
    -v /home/fushilian/caffe-docker:/opt/caffe \
    -v /data/cv_hub/datasets:/works/dataset \
    fsl/caffe-gpu:v1.0 /bin/bash
