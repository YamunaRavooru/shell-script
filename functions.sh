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
fi
dnf install mysql -y
validate $?  "Installing mysql"
dnf install git -y
validate $? "Installing git"
