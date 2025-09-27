#!/bib/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-practice"
SCRIPT_NAME=$((echo $0 | cut -d "." -f1))
LOGS_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER

if [ $USERID -ne 0 ]; then
    echo -e "please use root Privilages...$R Error $N"
    exit 1
fi
