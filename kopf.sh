#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Error: kopf.sh needs two arguments"
    exit 1
fi

num=$1
file=$2

if [[ ! -f "$file" ]]; then
    echo "Error: '$file' is not a regular file."
    exit 1
fi

count=0
while [[ $count -lt $num ]] && IFS= read -r line; do
    echo "$line"
    ((count++))
done < "$file"
