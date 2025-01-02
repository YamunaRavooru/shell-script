#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] 
then 
echo "Error: you must have root acess fot this script"
fi

dnf install mysql -y
dnf install git -y


