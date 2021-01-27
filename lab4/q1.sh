#!/bin/sh

read -a array

for ((i = 0; i < ${#array[@]}; i++)); do
    echo "${array[$i]}"
done
