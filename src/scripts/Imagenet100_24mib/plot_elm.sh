#!/bin/sh

################ CUTR ##################
# Mem size = 24000 KiB, 8x8x3 image is 0.188 KiB, n = 128000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 128000 --num_passes 60 --regularization cutmix --model ResNet --encode --encode_lvl 5 --depth 18 --exp_name imagenet100_24000kib_cutr_5_8x8_s${s}
done

################ ELM ##################
#Mem size = 24000 KiB, emb = 128 is 0.250 KiB, n = 96000
for s in 0 1 2 3 4
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 96000 --num_passes 128 --regularization none --model ELM_tinyimgnet --width 400 --emb 128 --exp_name imagenet100_24000kib_elm_128_s${s}
done

################ RESIZE ##################
# Mem size = 24000 KiB, 16x16x3 image is 0.750 KiB, n = 32000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 32000 --num_passes 60 --regularization cutmix --model ResNet --resize 16 --depth 18 --exp_name imagenet100_24000kib_resize_16x16_s${s}
done


cd ../../../logs
python get_res.py imagenet100_24000kib_elm_128_s
python get_res.py imagenet100_24000kib_cutr_5_8x8_s
python get_res.py imagenet100_24000kib_resize_16x16_s

