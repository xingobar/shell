#!/bin/bash

test="hello,test,php"

echo $test | cut -d , -f 2

# 輸出 byte
echo $test | cut -b 2-