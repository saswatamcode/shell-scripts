#!/bin/sh

a=30
b=20
echo "a is: $a and b is $b"

a=$(($a + $b))
b=$(($a - $b))
a=$(($a - $b))
echo "Now, a is: $a and b is $b"
