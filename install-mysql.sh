#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error : Root Access Needed !!!"
    exit 1
else 
    echo "You Are Root :) "
fi

yum install mysql -y

