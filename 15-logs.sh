#!/bib/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER

if [ $USERID -ne 0 ]; then
    echo -e "please use root Privilages...$R Error $N"
    exit 1
fi

VALIDATION(){
    if [ $1 -ne 0 ]; then
        echo -e "installation of $2 is ...$R failed $N"
        exit 1
    else
        echo -e "installation completed of $2...$G successfull $N"
    fi    
}

dnf list installed mysql

if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATION $? "MYSQL"
else 
    echo -e "required software is already...$G installed $N"

fi

dnf list installed nginx

if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATION $? "Nginx"
else 
    echo -e "required software is already...$G installed $N"

fi

dnf list installed python3

if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATION $? "python3"
else 
    echo -e "required software is already...$G installed $N"

fi
