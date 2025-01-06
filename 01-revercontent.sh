#!/bin/bash/

LOG_FOLDER="/var/log/expense-logs"
LOG_FILE=$(echo $0| cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"

while read -r line
do
  echo tail -r $line



done < 01-hello.sh