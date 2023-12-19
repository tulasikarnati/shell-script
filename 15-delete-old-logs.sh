#!bin/bash

SOURCE_DIR="/tmp/shellscript-logs"



if [ ! -d $SOURCE_DIR ]
then
    echo -e "$R Source directory: $SOURCE_DIR doesn't exist $N"
fi

FILE_TO_DELETE=$(find $SOURDE_DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file: $line"
done <<< $FILE_TO_DELETE