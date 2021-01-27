#!/bin/sh

read -a arr

for ((i = 0; i < ${#arr[@]}; i++)); do
    for ((j = 0; j < ${#arr[@]}; j++)); do
        if [[ $i -eq $j ]]; then
            continue
        else
            if [[ arr[i] -eq arr[j] ]]; then
                arr=(${arr[@]:0:$j} ${arr[@]:(($j + 1))})
                break
            fi
        fi
    done
done

echo "Array now: "
echo ${arr[@]}
