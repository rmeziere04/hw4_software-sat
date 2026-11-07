#!/bin/bash

if [[ $# -gt 1 ]]; then
echo "Error: excessive  arguments" >&2
exit 1
fi

dir=${1:-.}

if [[ ! -d "$dir" ]]; then
echo "Error: '$dir' isnt a directory" >&2
exit 1
fi

for item in "$dir"/*; do
if [[ -f "$item" ]]; then
echo "${item##*/}"
fi
done
