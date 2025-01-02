#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then 
echo "Error: you must have root acess fot this script"
exit 1
fi
dnf install mysql -y
if [ $? -ne 0]
then
 echo "mysql installed.....failure"
 else 
 echo  "mysql installed.....sucess"
 fi
dnf install git -y


