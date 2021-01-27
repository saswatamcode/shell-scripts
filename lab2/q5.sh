#!/bin/sh

echo "Enter 3 marks:"

read -a marksArray

sum=0
for elem in ${marksArray[@]}; do
    sum=$(($sum + $elem))
done

avg=$(expr $sum \/ 3)
percentage=$(echo "scale = 2; ($sum / 30) * 100" | bc)

echo "Avg: $avg, Percentage: $percentage"
