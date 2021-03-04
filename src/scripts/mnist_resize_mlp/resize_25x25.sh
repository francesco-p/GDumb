#!/bin/sh

MEM=625
i=0
python3 ../../main.py  --dataset MNIST --resize 25 --insize 625 --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name MNIST_MLP_RESIZE_25x25_${i}

