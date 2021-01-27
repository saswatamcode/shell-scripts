#!/bin/sh

from_number=$1
to_number=$2

for ((number = $from_number; number <= $to_number; number++)); do
    current_number=$number
    flag=0
    i=2

    while [ $i -le $(expr $current_number / 2) ]; do
        if [ $(expr $current_number % $i) -eq 0 ]; then
            flag=1
        fi

        i=$(expr $i + 1)
    done

    if [ $flag -eq 0 ]; then
        echo $current_number
    fi
done
