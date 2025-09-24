#!bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "please use root Privilages...$R Error $N"
    exit 1
fi

VALIDATION(){
    if [ $1 -ne 0 ];then
        echo -e "installation of $2 is ...$R failed $N"
    else
        echo -e "installation completed of $2...$G successfull $N"
    fi    
}

dnf list installed mysql

if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE() $? "mysql"
else 
    echo -e "required software is already...$G installed $N"

fi

dnf list installed nginx

if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE() $? "nginx"
else 
    echo -e "required software is already...$G installed $N"

fi

dnf list installed python3

if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE() $? "python3"
else 
    echo -e "required software is already...$G installed $N"

fi