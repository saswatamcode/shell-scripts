#!/bin/sh

read -p "Enter a string: " string
if [[ $(rev <<<$string) == "$string" ]]; then
    echo "Is a Palindrome"
else
    echo "Not a Palindrome"
fi
