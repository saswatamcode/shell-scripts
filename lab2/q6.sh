#!/bin/sh

echo "Enter temperature (C): "
read tc
# formula Tf=(9/5)*Tc+32
tf=$(echo "scale=2;((9/5) * $tc) + 32" | bc)
echo "$tc C = $tf F"
