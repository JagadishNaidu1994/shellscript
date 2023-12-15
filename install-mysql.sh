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

yum -o install mysql -y &>> $LOGFILE

VALIDATE $? "MYSQL"

yum -o install git -y &>> $LOGFILE

VALIDATE $? "git"