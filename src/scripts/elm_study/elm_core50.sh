#!/bin/sh

#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 10 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm10_core50
#
#rython3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 50 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm50_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 100 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm100_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 500 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm500_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 1000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm1000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 5000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm5000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 10000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm10000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 15000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm15000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 20000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm20000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 25000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm25000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 30000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm30000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 35000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm35000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 40000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm40000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 45000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm45000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 50000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm50000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 55000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm55000_core50
#
#python3 ../../main.py --dataset Core50 --num_classes_per_task 5 --num_tasks 10 --seed 0 --memory_size 60000 --num_passes 128 --regularization none --width 400 --model ELM_core --emb 128 --exp_name elm60000_core50

cd ../../../logs

tail -1 elm10_core50/checkpoint.log
tail -1 elm50_core50/checkpoint.log
tail -1 elm100_core50/checkpoint.log
tail -1 elm500_core50/checkpoint.log
tail -1 elm1000_core50/checkpoint.log
tail -1 elm5000_core50/checkpoint.log
tail -1 elm10000_core50/checkpoint.log
tail -1 elm15000_core50/checkpoint.log
tail -1 elm20000_core50/checkpoint.log
tail -1 elm25000_core50/checkpoint.log
tail -1 elm30000_core50/checkpoint.log
tail -1 elm35000_core50/checkpoint.log
tail -1 elm40000_core50/checkpoint.log
tail -1 elm45000_core50/checkpoint.log
tail -1 elm50000_core50/checkpoint.log
tail -1 elm55000_core50/checkpoint.log
tail -1 elm60000_core50/checkpoint.log

