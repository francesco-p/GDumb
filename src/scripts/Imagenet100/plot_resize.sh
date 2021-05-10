#!/bin/sh

################ RESIZE ##################

# Mem size = 12000 KiB, 32x32x3 image is 3.000 KiB, n = 4000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 4000 --num_passes 60 --regularization cutmix --model ResNet --resize 32 --depth 18 --exp_name imagenet100_12000kib_resize_32x32_s${s}
done


# Mem size = 12000 KiB, 24x24x3 image is 1.688 KiB, n = 7111
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 7111 --num_passes 60 --regularization cutmix --model ResNet --resize 24 --depth 18 --exp_name imagenet100_12000kib_resize_24x24_s${s}
done


# Mem size = 12000 KiB, 16x16x3 image is 0.750 KiB, n = 16000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 16000 --num_passes 60 --regularization cutmix --model ResNet --resize 16 --depth 18 --exp_name imagenet100_12000kib_resize_16x16_s${s}
done


# Mem size = 12000 KiB, 8x8x3 image is 0.188 KiB, n = 64000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 64000 --num_passes 60 --regularization cutmix --model ResNet --resize 8 --depth 18 --exp_name imagenet100_12000kib_resize_8x8_s${s}
done


# Mem size = 12000 KiB, 4x4x3 image is 0.047 KiB, n = 256000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 256000 --num_passes 60 --regularization cutmix --model ResNet --resize 4 --depth 18 --exp_name imagenet100_12000kib_resize_4x4_s${s}
done


# Mem size = 12000 KiB, 2x2x3 image is 0.012 KiB, n = 1024000
for s in 1 2 3 4 0
do
    python ../../main.py --dataset TinyImagenet100 --num_classes_per_task 10 --num_tasks 10 --seed $s --memory_size 1024000 --num_passes 60 --regularization cutmix --model ResNet --resize 2 --depth 18 --exp_name imagenet100_12000kib_resize_2x2_s${s}
done


cd ../../../logs
python get_res.py imagenet100_12000kib_resize_32x32_s
python get_res.py imagenet100_12000kib_resize_24x24_s
python get_res.py imagenet100_12000kib_resize_16x16_s
python get_res.py imagenet100_12000kib_resize_8x8_s
python get_res.py imagenet100_12000kib_resize_4x4_s
python get_res.py imagenet100_12000kib_resize_2x2_s
