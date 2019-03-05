#!/bin/bash

if [ "$1" = "-h" ]; then
    echo "Follow the command with three arguments. These arguments will be returned in reverse order"
else
    echo "$3 $2 $1"
fi
