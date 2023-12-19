#!/bin/bash

FILE="/etc/passwd"

R= "\e[31m"
G= "\e[32m"
Y= "\e[33m"
N= "\e[0m"

if [ ! -f $FILE ]
then 
    echo "$R file $FILE doen't exists. $N"
fi

while IFS=":" read -r username passwd userid userfullname groupid
do
    echo "user_name : $username"
    echo "user_id : $userid"
    echo "user_fullname : $userfullname"
    echo "group_id : $groupid"
done < FILE