#!/bin/bash

count=0

while read; do
    echo "第($count)行: $REPLY"
#    count=$(expr $count + 1)
    count=$(( $count + 1))
done