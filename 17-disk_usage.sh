#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp/File')
DISK_THRESHOLD=1
message=""

while IFS= read line
do
    #echo $line
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    #echo "$usage"
    partition=$(echo $line | awk '{print $1F}')
    #echo "$partition"
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="HIGH DISK USAGE on $partition:$usage\n"
    fi
done <<< $DISK_USAGE
echo -e "message: $message"