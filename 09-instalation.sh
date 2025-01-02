#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then
    dnf list intalled mysql
    if [ $? -eq 0 ]
     then
     echo "mysql already.....installed" 
     else
     dnf install mysql -y
    fi 
    #    dnf install git -y

    # if [ $? -eq 0 ]
    #  then
    #     echo "MYSQL Installed....Successful"
    #     echo "Git Installed.... Sucessful"
    #    else 
    #     echo "MYSQL Installed....Failure"
    #     echo "Git Installed.... Failure"
    #  fi   
  else      
        echo "Error: you must have sudo access to run this script"
  fi 
   
    
  


