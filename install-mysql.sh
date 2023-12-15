#!/bin/bash

ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

RED=\e[31m
GREEN=\e[32m
YELLOW=\e[33m
NORMAL=\e[0m

VALIDATE (){
    if [ $1 = 0 ]
    then 
        echo -e "\e[32m Installation \e[0m of $2 Success....!!!!"
    else   
        echo -e "\e[31m Installation \e[0m of $2 Failed..."
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "Error : Root Access Needed !!!"
    exit 1
else 
    echo -e "You Are Root :) "
fi

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "MYSQL"

yum install git -y &>> $LOG_FILE

VALIDATE $? "git"