#!/bin/sh

file=$1
if [ -a "$file" ]; then
    echo "$file exists."
    [ -w $file ] && W="Write = yes" || W="Write = No"
    [ -x $file ] && X="Execute = yes" || X="Execute = No"
    [ -r $file ] && R="Read = yes" || R="Read = No"
    echo "$file permissions: "
    echo "$W"
    echo "$R"
    echo "$X"
fi
