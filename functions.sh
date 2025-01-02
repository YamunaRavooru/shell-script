#!/bin/bash
USERID=$(id -u)
validate() {
    if [ $1 -ne 0 ]
    then
      echo "$2....Failure"
      exit 1
     else
      echo "$2.....Success" 
    fi  
}
if [ $USERID -ne 0 ]
then
  echo "Erorr:Only Root user access this script "
  exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    validate $?  "Installing mysql"
 else
   echo "mysql is already installed "   
fi
dnf list installed git
if [ $? -ne 0 ]
then   
   dnf install git -y
   validate $? "Installing git"
else
   echo "git is already installed"
fi      
