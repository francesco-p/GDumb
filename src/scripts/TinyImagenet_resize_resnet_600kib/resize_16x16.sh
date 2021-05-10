#!/bin/sh


MEM=2400
EMB=128

python3 ../../main.py --dataset TinyImagenet --num_classes_per_task 20 --num_tasks 10 --seed 0 --memory_size $MEM --num_passes 128 --regularization cutmix --width 400 --batch_size 10 --model ResNet --depth 18 --exp_name tiny_600kib_elm_${EMB}_s${MEM}

###################################################

for s in 0 #1 2 3 4
do
    python3 ../../main.py --dataset TinyImagenet --num_classes_per_task 20 --num_tasks 10 --seed $s --memory_size $MEM --num_passes 128 --regularization none --width 400 --batch_size 512 --model ELM_tinyimgnet --emb $EMB --exp_name tiny_600kib_elm_${EMB}_s${MEM}

done


for s in 0 1 2 3 4
do
    echo "~.~.~. tiny_600kib_elm_${EMB}_s${MEM} ~.~.~."
    tail -1 "../../../logs/tiny_600kib_elm_${EMB}_s${MEM}/checkpoint.log"
done

