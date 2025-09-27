#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
R="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo "$0 | cut -d "." -f1")
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER

echo "Script started executed at: $(date)" 


if [ $USERID -ne 0 ]; then
    echo -e "please use $R root user privilages $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "installation of $2 has been $R failed $N" 
    else
    echo -e "installation of $2 has been $G successfull $N" 
    if
}

for package in $@
do

    dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0] ; then
        echo -e "required $package $R not istalled yet $N"

        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "$package"
    else
        echo "required $package already exist"
    fi
done
