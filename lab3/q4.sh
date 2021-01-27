#!/bin/sh
n=$1
rev=0
tmp=0

while [ $n -gt 0 ]; do
    tmp=$(expr $n % 10)
    rev=$((rev * 10 + tmp))
    n=$(expr $n / 10)
done
echo "reverse no is $rev"
