#!/bin/bash

if [ "$#" != 3 ]; then
    echo "Error: Insufficient number of arguments. Please provide 3 arguments: [path_from] [path_to] [string_to_append]"
    exit 1
fi

pathFrom=$1
pathTo=$2
stringToAppend=$3

for object in "$pathFrom"/*; 
do 
    if [ -f "$object" ]; then
        filename="$(basename -- $object)";
        mv "$filename" "$pathTo/${filename%.*}$stringToAppend.${filename##*.}"; 
    fi
done