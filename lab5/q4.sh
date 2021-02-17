#!/bin/sh

pow() {
    x=$1
    y=$2
    ans=1
    for ((i = 0; i < $y; i++)); do
        ans=$((ans * x))
    done
    echo "Ans is $ans"
}

pow $1 $2
