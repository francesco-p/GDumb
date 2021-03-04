#!/bin/sh

MEM=3056
EMB=64
i=0
python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model MLP --encode --emb $EMB --exp_name MNIST_ENCODE_EMB${EMB}_MEM${MEM}_${i}
