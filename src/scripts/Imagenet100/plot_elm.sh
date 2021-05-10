#!/bin/sh

################ ELM ##################

#Mem size = 12000 KiB, emb = 512 is 1.000 KiB, n = 12000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 12000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 512 --exp_name imagenet100_12010kib_elm_512_s${s}
done


#Mem size = 12000 KiB, emb = 256 is 0.500 KiB, n = 24000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 24000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 256 --exp_name imagenet100_12010kib_elm_256_s${s}
done


#Mem size = 12000 KiB, emb = 128 is 0.250 KiB, n = 48000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 48000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 128 --exp_name imagenet100_12010kib_elm_128_s${s}
done


#Mem size = 12000 KiB, emb = 64 is 0.125 KiB, n = 96000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 96000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 64 --exp_name imagenet100_12010kib_elm_64_s${s}
done


#Mem size = 12000 KiB, emb = 32 is 0.062 KiB, n = 192000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 192000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 32 --exp_name imagenet100_12010kib_elm_32_s${s}
done


#Mem size = 12000 KiB, emb = 16 is 0.031 KiB, n = 384000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 384000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 16 --exp_name imagenet100_12010kib_elm_16_s${s}
done


cd ../../../logs
python get_res.py imagenet100_12010kib_elm_512_s
python get_res.py imagenet100_12010kib_elm_256_s
python get_res.py imagenet100_12010kib_elm_128_s
python get_res.py imagenet100_12010kib_elm_64_s
python get_res.py imagenet100_12010kib_elm_32_s
python get_res.py imagenet100_12010kib_elm_16_s


