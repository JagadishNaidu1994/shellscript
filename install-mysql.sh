#!/bin/bash

ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

R=\e[31m
G=\e[32m
Y=\e[33m
N=\e[0m

VALIDATE (){
    if [ $1 = 0 ]
    then 
        echo -e "Installation of $2 $G Success....!!!!$N"
    else   
        echo -e "\e[31m Installation \e[0m of $2 $R Failed...$N"
    fi
}

if [ $ID -ne 0 ]
then 
    echo -e "$R Error : Root Access Needed !!! $N"
    exit 1
else 
    echo -e "$G You Are Root :) $N"
fi

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "MYSQL"

yum install git -y &>> $LOG_FILE

VALIDATE $? "git"