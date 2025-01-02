#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ] 
then
    dnf install mysql -y
    dnf install git -y
fi
exit 1
echo "Error: you must have sudo access to run this script"  



