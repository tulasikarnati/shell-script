#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0] 
then
    echo "Error:: Installation is failed"
    exit 1
else
    echo "Installation  is SUCCESS"   
fi
}

if [ $ID -ne 0 ]
then
    echo "please run this script with root access"
    exit 1
else
    echo "root user"
fi

yum install mysql -y
VALIDATE

yum install git -y
VALIDATE