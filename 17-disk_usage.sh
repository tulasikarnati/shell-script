#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read -r line
do
    #echo $line
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    #echo "$usage"
    partition=$(echo $line | awk '{print $1F}')
    #echo "$partition"
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="HIGH DISK USAGE on $partition:$usage<br>"
    fi
done <<< $DISK_USAGE
echo -e "message: $message"
#echo "$message" | mail -s "High Disk Usage" ktulasic1994@gmail.com

sh mail.sh "DevOps Team" "High Disk Usage" "$message" "ktulasic1994@gmail.com" "ALERT High Disk Usage"