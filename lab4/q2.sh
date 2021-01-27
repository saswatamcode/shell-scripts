#!/bin/sh

read -a array

for ((i = ${#array[@]}; i >= 0; i--)); do
    echo "${array[$i]}"
done
