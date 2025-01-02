#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then 
echo "Error: you must have root acess fot this script"
exit 1
fi
dnf install mysqll -y
if [ $? -ne 0 ]
then
 echo "mysql installed.....failure"
 exit 1
 else 
 echo  "mysql installed.....sucess"
 fi
dnf install git -y

if [ $? -ne 0 ]
then
 echo "git installed.....failure"
 exit 1
 else 
 echo  "git installed.....sucess"
 fi
