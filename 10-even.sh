#!/bin/bash

echo "provide NUMBER:"
read NUMBER
if [ $(($NUMBER % 2 -eq 0)) ]; then
    echo $NUMBER is EVEN
else
    echo $NUMBER is odd

fi