#!/bin/bash

ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE (){
    if [ $1 = 0 ]
    then 
        echo "Installation of $2 Success....!!!!"
    else   
        echo "Installation of $2 Failed..."
    fi
}

if [ $ID -ne 0 ]
then 
    echo "Error : Root Access Needed !!!"
    exit 1
else 
    echo "You Are Root :) "
fi

yum install mysql -y &>> $LOG_FILE

VALIDATE $? "MYSQL"

yum install git -y &>> $LOG_FILE

VALIDATE $? "git"