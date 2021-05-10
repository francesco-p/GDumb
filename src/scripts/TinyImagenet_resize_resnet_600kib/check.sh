#!/bin/sh

s=0

for i in 2 04 8 16 32 48 64
do
    echo "######### resize ${i} ############"
    tail -1 ../../../logs/TinyImagenet_ResNet_${i}x${i}_seed${s}/checkpoint.log
done
