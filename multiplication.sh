#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 
SOURCE_DIR=$1
DESTINATION_DIR=$2
DAYS=${3:-14}
LOG_FOLDER="/home/ec2-user/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"
USAGE() {

    echo  -e "$R USAGE:$N sh backup.sh <SOURCE_DIR>  <DESTINATION_DIR> <DAYS(optional)>"
    exit 1
}
if [ $# -lt 2 ]
then
   USAGE
fi
echo Enter the number for multiplication: $1
 

 for i in {1..10}
 do
    res=$(( $1 * $i)) 
   echo "$1 x $i" =$res

 done  