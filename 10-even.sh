#!/bin/bash

NUMBER=$1

read $NUMBER

if [ $(( $NUMBER%2 -eq 0 ))] ; then
    echo "$NUMBER is even number"
else
    echo "$NUMBER is odd"
fi        