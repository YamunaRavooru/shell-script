#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 
SOURCE_DIR=$1
DESTINATION_DIR=$2
DAYS=${3:-14}
LOG_FOLDER="/home/ec2-user/shellscript-logs"
LOG_FILE=$(echo $0 | awk -F "/" '{print $NF}' | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"
USAGE() {

    echo  -e "$R USAGE:$N sh backup.sh <SOURCE_DIR>  <DESTINATION_DIR> <DAYS(optional)>"
    exit 1
}
mkdir -p /home/ec2-user/shellscript-logs
if [ $# -lt 2 ]
then
   USAGE
fi
if [ ! -d "$SOURCE_DIR" ]
then
 echo -e "$SOURCE_DIR does not exist.....please check"
 exit 1
fi
if [ ! -d "$DESTINATION_DIR" ]
then
 echo -e "$DESTINATION_DIR does not exist.....please check"
 exit 1
fi
echo "script started execute at :$TIMESTAMP"  >>$LOG_FILE_NAME 

 file=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)
 if [ -n "$file" ]
 then
    echo "files are :$file"
    ZIP_FILE="$DESTINATION_DIR/app-logs-$TIMESTAMP.zip"

    find $SOURCE_DIR -name "*.log" -mtime +$DAYS | zip -@ "$ZIP_FILE"
       if [ -f  "$ZIP_FILE" ]
        then
         echo -e "sucessfuly created zip files older than $days"
         while read -r filename
         do
           echo "deleting files:$filename"
           rm -rf $filename
           echo "deleted files:$filename"
         done <<< $file
         else
         echo -e "$R ERORR: Failed to create zip file"
        fi
  else   
        echo -e "$N No files are found older than $DAYS"
  fi