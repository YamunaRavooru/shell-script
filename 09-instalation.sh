#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then 
echo "Error: you must have root acess fot this script"
exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ] #not installed
then
   dnf install mysql -y
    if [ $? -ne 0 ]
     then
       echo "mysql installed.....failure"
       exit 1
     else 
      echo  "mysql installed.....success"
    fi
 else 
 echo "mysql already installed"
fi    
dnf list installed git
if [ $? -ne 0 ]
then
   dnf install git -y

     if [ $? -ne 0 ]
     then
      echo "git installed.....failure"
      exit 1
     else 
       echo  "git installed.....success"
   fi
 else
   echo "git is alerady installed"
 fi    
