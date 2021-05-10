#!/bin/sh

DSET="TinyImagenet"
MODEL="ResNet"
MEM=3200
RESIZE=08
i=0

python ../../main.py --dataset $DSET --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --resize $RESIZE --num_passes 256 --regularization cutmix --model $MODEL --depth 18 --exp_name ${DSET}_${MODEL}_${RESIZE}x${RESIZE}_seed${i}
