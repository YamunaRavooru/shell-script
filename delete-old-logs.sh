#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 
SOURCE_DIR="/home/ec2-user/app-logs"
LOG_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"
validate() {
    if [ $1 -ne 0 ]
    then
      echo -e "$2....$R Failure $N"
      exit 1
     else
      echo  -e "$2..... $G Success $N" 
    fi  
}
check_root() {
  if [ $USERID -ne 0 ]
   then
    echo -e " Erorr:$R Only Root user access this script $N "
   exit 1
 fi
}
echo "Script started executing at: $TIMESTAMP"   &>>$LOG_FILE_NAME

file_to_delete=$( find $SOURCE_DIR -name  "*.log" -mtime +14)  
echo "files to be deleted : $file_to_delete"
while read -r file
do
 echo "files to be deleted : $file"

done <<< $file_to_delete