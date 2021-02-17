#!/bin/sh

factorial() {
    num=$1
    fact=1

    for ((i = 2; i <= num; i++)); do
        fact=$((fact * i))
    done

    echo "Factorial is $fact"
}

echo "Enter a number"
read num
factorial $num
