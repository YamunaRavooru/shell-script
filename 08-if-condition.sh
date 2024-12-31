#!/bin/bash
today={"mon""tue""wed""thu""fri""sat""sun"}
if [ "${today[6]}" -eq "sun" ] 
then
 printf "weekend\n" 
 else
  printf "not weekend\n"
  fi
exit 0
 
 