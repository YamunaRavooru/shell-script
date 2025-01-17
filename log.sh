#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 
mkdir -p /var/log/shellscript-logs
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
if [ $USERID -ne 0 ]
then
  echo -e " Erorr:$R Only Root user access this script $N "
  exit 1
fi
dnf list installed mysql &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
then
    dnf install mysql -y &>>$LOG_FILE_NAME
    validate $?  "Installing mysql"
 else
   echo -e  "mysql is already  $Y installed $N "   
fi
dnf list installed git  &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
then   
   dnf install git -y  &>>$LOG_FILE_NAME
   validate $? "Installing git"
else
   echo  -e "git is already  $Y installed $N"
fi      
