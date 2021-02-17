#!/bin/sh

ans=0
gcd() {
    if [ $2 -ne 0 ]; then
        ans=$(expr $1 % $2)
        gcd $2 $ans
        return
    else
        ans=$1
        return
    fi
}

echo "Enter two no: "
read min
read max
if [ $min -gt $max ]; then
    temp=$max
    max=$min
    min=$temp
fi
gcd $max $min
echo "GCD is: $ans"
