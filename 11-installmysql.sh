#!/bin/bash

USERID=$(id -u)

if [ $UESRID -ne 0 ]; then
    echo "please use root user privilages:: Error"
    exit 1 # failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installation failed with ::Error"
else
    echo "installation of mysql successful"
fi