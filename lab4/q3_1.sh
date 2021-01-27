#!/bin/sh

read -a arr

for ((i = 0; i < ${#arr[@]} - 1; i++)); do
    small=${arr[$i]}
    index=$i
    for ((j = i + 1; j < ${#arr[@]}; j++)); do
        if ((arr[j] < small)); then
            small=${arr[$j]}
            index=$j
        fi
    done
    temp=${arr[$i]}
    arr[$i]=${arr[$index]}
    arr[$index]=$temp
done

echo "Printing sorted array"
for ((i = 0; i < ${#arr[@]}; i++)); do
    echo ${arr[$i]}
done
