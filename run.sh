#!/bin/bash

python crop_vox.py \
    --workers 1 \
    --device_ids 0 \
    --format .mp4 \
    --dataset_version 2 \
    --out_folder preprocessed/vox 