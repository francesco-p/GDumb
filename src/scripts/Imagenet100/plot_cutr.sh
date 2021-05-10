#!/bin/sh

################ CUTR ##################

# Mem size = 12000 KiB, 16x16x3 image is 0.750 KiB, n = 16000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 16000 --num_passes 60 --regularization cutmix --model ResNet --encode --encode_lvl 7 --depth 18 --exp_name imagenet100_12000kib_cutr_7_16x16_s${s}
done

# Mem size = 12000 KiB, 8x8x3 image is 0.188 KiB, n = 64000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 64000 --num_passes 60 --regularization cutmix --model ResNet --encode --encode_lvl 5 --depth 18 --exp_name imagenet100_12000kib_cutr_5_8x8_s${s}
done

# Mem size = 12000 KiB, 4x4x3 image is 0.047 KiB, n = 256000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 256000 --num_passes 60 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name imagenet100_12000kib_cutr_4_4x4_s${s}
done


cd ../../../logs
python get_res.py imagenet100_12000kib_cutr_7_16x16_s
python get_res.py imagenet100_12000kib_cutr_5_8x8_s
python get_res.py imagenet100_12000kib_cutr_4_4x4_s

