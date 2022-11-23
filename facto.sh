#!/bin/sh
mult=$1
factoriel=1

if [ $mult -eq 0 ]; then
    echo 1
    exit 0
fi
if [ $# -ne 1 ]; then
    exit 1
else
    while [ $mult -gt 0 ]; do
        factoriel=$(($factoriel * $mult))
        mult=$(($mult - 1))
    done
    echo $factoriel
    exit 0
fi
