#!/bin/bash
today=( "mon" "tue" "wed" "thu" "fri" "sat" "sun")
echo "print today:: ${today[6]}"
if [ ${today[6]} -eq 6 ] 
then
 printf "weekend\n" 
 else
  printf "not weekend\n"
  fi
exit 0
 
 