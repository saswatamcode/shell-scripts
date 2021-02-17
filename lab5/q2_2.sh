#!/bin/sh

factorial() {
    i=$1
    f=1
    [ $i -le 2 ] && echo $i || {
        f=$((i - 1))
        f=$(factorial $f)
        f=$((f * i))
        echo "Factorial is $f"
    }
}

factorial $1
