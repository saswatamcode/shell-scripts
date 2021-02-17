#!/bin/sh

swap() {
    a=$1
    b=$2
    echo "a is $a, b is $b"
    a=$(($a + $b))
    b=$(($a - $b))
    a=$(($a - $b))
    echo "Now, a is $a and b is $b"
}

a=20
b=30
swap $a $b
