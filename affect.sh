#!/bin/bash

arr=('-', '\', '|', '/')

while true; do
    # array for loop
    for c in "${arr[@]}"; do
        printf "\r %c " $c
        sleep 0.1
    done
done