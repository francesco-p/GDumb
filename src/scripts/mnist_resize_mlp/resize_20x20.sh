#!/bin/sh

MEM=977
i=0
python3 ../../main.py --dataset MNIST --resize 20 --insize 400 --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --exp_name MNIST_MLP_RESIZE_20x20_${i}

