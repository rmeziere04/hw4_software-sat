#!/bin/bash

if [[$# -eq 0]]; then
    text="n"
else
    text="$*"
fi

while true; do
    echo "$text"
done
