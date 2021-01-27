#!/bin/sh

read -a arr

echo "Enter index: "
read index
echo "Enter elem: "
read elem

arr=("${arr[@]:0:$index}" $elem "${arr[@]:$index}")

echo "Array now :"
echo ${arr[*]}
