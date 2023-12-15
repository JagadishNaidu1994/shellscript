#!/bin/bash

ID=$(id -u) 

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

yum install mysql -y

VALIDATE $? "Installing MYSQL"

yum install git -y

VALIDATE $? "Installing git"