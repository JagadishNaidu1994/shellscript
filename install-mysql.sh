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

if [ $? = 0 ]
then 
    echo "Installation of MYSQL Success....!!!!"
else   
    echo "Installation of MYSQL Failed..."
fi

yum install git -y

if [ $? = 0 ]
then 
    echo "Installation of GIT Success....!!!!"
else   
    echo "Installation of GIT Failed..."
fi