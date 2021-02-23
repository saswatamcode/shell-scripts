#!/bin/sh

echo "Menu: "
echo " 1. Copy a File "
echo " 2. Remove a file "
echo " 3. Rename a file"
echo " 4. Quit"
echo "Enter your choice: \c"
read Choice
case "$Choice" in
1)
    echo "Enter file to copy from: \c"
    read f1
    echo "Enter file to: \c "
    read f2
    if [ -f $f1 ]; then
        cp $f1 $f2
    else
        echo "$f1 does not exist"
    fi
    ;;
2)
    echo "Enter the file to be removed "
    read r1
    if [ -f $r1 ]; then
        rm -i $r1
    else
        echo "$r1 file does not exist "
    fi
    ;;
3)
    echo "Enter file to rename \c"
    read f1
    echo "Enter new file name \c "
    read f2
    if [ -f $f1 ]; then
        mv $f1 $f2
    else
        echo "$f1 does not exist"
    fi
    ;;
4)
    echo "Exit......."
    exit
    ;;
esac
