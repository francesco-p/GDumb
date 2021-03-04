#!/bin/sh

MEM=679
i=0
python3 ../../main.py  --dataset MNIST --resize 24 --insize 576 --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name MNIST_MLP_RESIZE_24x24_${i}

