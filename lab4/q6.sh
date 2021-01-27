#!/bin/sh

read -a arr

echo "Enter elem to be searched:"
read elem

flag=0

for ((i = 0; i < ${#arr[@]}; i++)); do
    if [ ${arr[$i]} == $elem ]; then
        echo "Found at $i"
        flag=1
        break
    fi
done

if [ $flag == 0 ]; then
    echo "Not Found!"
fi
