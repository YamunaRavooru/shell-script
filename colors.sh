#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
validate() {
    if [ $1 -ne 0 ]
    then
      echo -e "$2....$R Failure"
      exit 1
     else
      echo  -e "$2..... $G Success" 
    fi  
}
if [ $USERID -ne 0 ]
then
  echo -e " Erorr:Only $R Root user access this script "
  exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    validate $?  "Installing mysql"
 else
   echo -e  "mysql is already  $Y installed "   
fi
dnf list installed git
if [ $? -ne 0 ]
then   
   dnf install git -y
   validate $? "Installing git"
else
   echo  -e "git is already  $Y installed"
fi      
