#!/bin/sh

DSET='CIFAR10'
MEM=327
RESIZE=25
INSIZE=$(( 25*25*3 ))
MODEL='MLP'
i=0

python3 ../../main.py --dataset $DSET --resize $RESIZE --insize $INSIZE --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model $MODEL --exp_nam ${DSET}_${MODEL}_RESIZE_${RESIZE}x${RESIZE}_${i}


