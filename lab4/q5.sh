#!/bin/sh

read -a arr

echo "Enter index: "
read index

arr=("${arr[@]:0:$index}" "${arr[@]:$index+1}")

echo "Array now :"
echo ${arr[*]}
