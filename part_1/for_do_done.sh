#!/bin/bash

string=$1

for i in /home/aubcls77/homework_6/part_2/book_pages/*.txt
    do ./string_finder_CHALKOWSKI.sh $1 $i
done
