#!/bin/sh

read file
read content

if [ -a file ]; then
    echo $content >>$file
else
    touch $file
    echo $content >>$file
fi
