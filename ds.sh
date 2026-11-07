#!/bin/bash

if [[ $# -gt 1 ]]; then
echo "Error: too many arguments" >&2
exit 1
fi

dir=${1:-.}

if [[ ! -d "$dir" ]]; then
echo "Error: '$dir' is not a directory" >&2
exit 1
fi

for item in "$dir"/*; do
if [[ -d "$item" ]]; then
echo "${item##*/}"
fi
done
