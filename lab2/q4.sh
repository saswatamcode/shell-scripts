#!/bin/sh

basic=10000
ta=$(echo "scale = 2; $basic * 0.3" | bc)
hra=$(echo "scale = 2; $basic * 0.07" | bc)

gross=$(echo "scale = 2; $basic +$ta +$hra" | bc)
echo "Gross: $gross"
