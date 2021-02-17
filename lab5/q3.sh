#!/bin/sh

sum() {
    arr=$1
    sum=0
    for ((i = 0; i < ${#array[@]}; i++)); do
        sum=$((array[$i] + sum))
    done
    echo "Sum is $sum"
}

read -a array

sum $array
