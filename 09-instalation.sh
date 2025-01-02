#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then
    dnf install mysql -y
    dnf install git -y
fi
if [ $? -eq 0 ]
then
  echo "MYSQL Installed....Successful"
 else 
   echo "MYSQL Installed....Failure"
    echo "Error: you must have sudo access to run this script"
  fi 
   
    
  

