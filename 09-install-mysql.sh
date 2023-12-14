#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "please run this script with root access"
else
    echo "root user"
fi