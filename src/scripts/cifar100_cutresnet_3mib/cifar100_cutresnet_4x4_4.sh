
python3 ../../main.py --dataset CIFAR100 --num_classes_per_task 10 --num_tasks 10 --seed 0 --memory_size 64000 --num_passes 256 --regularization cutmix --model ResNet --encode --encode_lvl 4 --depth 18 --exp_name CIFAR100_cutresnet_4_4x4_3mib
