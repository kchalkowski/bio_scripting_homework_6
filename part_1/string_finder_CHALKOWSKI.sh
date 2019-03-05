#!/bin/bash

#echo "Enter the file name: "
#read file

#echo "Enter the string (without quotes): "
#read string

count=$(grep -o "$1" $2 | wc -l)
lines=$(grep -n "$1" $2 | cut -d : -f 1)

echo "In $2 there are $count occurences of $1"
echo "$1 is found on lines: $lines"


