#!/bin/sh

MEM=43463
i=0
python3 ../../main.py --dataset MNIST --resize 3 --insize 9 --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name MNIST_MLP_RESIZE_03x03_${i}

