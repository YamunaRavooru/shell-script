#!/bin/bash
TODAY=$1
DAYS=("mon" "Tue""wed""Thu""Fri""Sat""Sunday")
echo "enter today is::$TODAY"
if ( $TODAY -eq ${DAYS[6]})
then
  echo "today is $TODAY :: holiday"
 else
 echo "today is working day ::$TODAY" 
 fi