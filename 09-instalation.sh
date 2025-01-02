#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then
    dnf list intalled mysql
    if [ $? -ne 0 ]
     then
      dnf install mysql -y
      if [ $? -eq 0 ]
      then 
      echo "mysql installed.....sucessfully"
     else
      echo "mysql installed....failure"
     fi
     else
      echo "mysql already.....installed" 
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
   
    
  


