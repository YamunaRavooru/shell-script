#!/bin/bash
today={"mon""tue""wed""thu""fri""sat""sun"}
echo"${today[6]}"
if [ ${today[6]} -eq "sun" ] 
then
 printf "weekend\n" 
 else
  printf "not weekend\n"
  fi
exit 0
 
 