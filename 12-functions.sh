#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed with ::Error"
        exit 1
    else
        echo "installation of $2 successful"
    fi
}

dnf install mysql -y

VALIDATE $? "mysql"

dnf install nginx -y

VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"