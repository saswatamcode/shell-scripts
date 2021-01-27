#!/bin/sh

echo "Enter marks"
read marks

if [ $marks -ge 90 ]; then
    echo "Grade O"
elif [ $marks -ge 80 ] && [ $marks -lt 90 ]; then
    echo "Grade E"
elif [ $marks -ge 70 ] && [ $marks -lt 80 ]; then
    echo "Grade A"
elif [ $marks -ge 60 ] && [ $marks -lt 70 ]; then
    echo "Grade B"
elif [ $marks -ge 50 ] && [ $marks -lt 60 ]; then
    echo "Grade C"
else
    echo "Grade F"
fi
