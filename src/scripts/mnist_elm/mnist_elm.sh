#!/bin/sh

for i in 01 #02 03 04 05
do

    MEM=24448
    EMB=8
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}

    MEM=12224
    EMB=16
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}

    MEM=6112
    EMB=32
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}

    MEM=3056
    EMB=64
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}

    MEM=1528
    EMB=128
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}

    MEM=764
    EMB=256
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}

    MEM=382
    EMB=512
    python3 ../../main.py --dataset MNIST --num_classes_per_task 2 --num_tasks 5 --seed $i --memory_size $MEM --num_passes 128 --regularization none --width 400 --model ELM_mnist --emb $EMB --exp_name MNIST_ELM_EMB${EMB}_MEM${MEM}_${i}


done

