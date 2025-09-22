#!/bin/bash

echo "all variables passed to the script: $@"
echo "all variables passed to the script: $*"
echo "script name: $0"
echo "current directory: $PWD"
echo "current working user: $USER"
echo "home directory of the user: $HOME"
echo "process ID of the script: $$"

sleep 50 &

echo "PID of the last CMD in the back groungd is: $!"

