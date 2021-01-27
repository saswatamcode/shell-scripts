#!/bin/sh

echo "Enter 2 numbers"
read a
read b
sum=$(expr $a + $b)
echo "Sum is $sum"
