#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <number_of_directories>"
    exit 1
fi

num_directories=$1

# Create directories from Module_01 to Module_<num_directories>
for ((i=1; i<=$num_directories; i++)); do
    dir_name="Module_$(printf "%02d" $i)"
    mkdir -p "$dir_name"
    echo "Created directory: $dir_name"
done

