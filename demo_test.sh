#!/bin/bash

# Image and model names
TEST_IMG=directory
MODEL_NAME=ade20k-resnet50dilated-ppm_deepsup
MODEL_PATH=ckpt/$MODEL_NAME
RESULT_PATH=./

ENCODER=$MODEL_NAME/encoder_epoch_20.pth
DECODER=$MODEL_NAME/decoder_epoch_20.pth

# Inference
python3 -u test.py \
  --imgs $TEST_IMG \
  --cfg config/ade20k-resnet50dilated-ppm_deepsup.yaml \
  DIR $MODEL_PATH \
  TEST.result directory \
  TEST.checkpoint epoch_20.pth


