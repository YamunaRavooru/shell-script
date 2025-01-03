#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 
LOG_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP"
validate() {
    if [ $1 -ne 0 ]
    then
      echo -e "$2....$R Failure $N"
      exit 1
     else
      echo  -e "$2..... $G Success $N" 
    fi  
}

echo "Script started executing at :$TIMESTAMP" &>>$LOG_FILE_NAME
check-root 
for packages in $@
do
   dnf list install $Packages  &>>LOG_FILE_NAME
   if [ $? -ne 0 ]
   then 
     dnf install $packages -y  &>>LOG_FILE_NAME
     validate $? "$packages"
   else  
      echo -e "$packages is already   $Y.....installed $N"
   fi
done      