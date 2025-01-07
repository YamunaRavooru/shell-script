#!/bin/bash
 DISK_USAGE=$(df -hT |grep xfs)
 DISK_THRESHOLD=5 # real projects more than 70
 MSG=""
 while read -r line
 do
  USAGE=$(echo $line |awk -F " " '{print $6F}'| cut -d "%" -f1)
  PARTITION=$(echo $line |awk -F " " '{print $NF}')
  echo "partition =$PARTITION ,USAGE=$USAGE"
  if [ $USAGE -ge $DISK_THRESHOLD ]
  then
    MSG+="High disk usage on partition:$PARTITION usage is:$USAGE \n"
  fi 

 done <<< $DISK_USAGE
 echo -e "message: $MSG"
 echo "$MSG" | mutt -s "High Disk Usage" malini.mahathi@gmail.com