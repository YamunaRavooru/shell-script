#!/bin/bash
today="$(date +%a)"
if [ "${today}" -eq 7 ] 
 printf "weekend\n" 
 else
  printf "not weekend\n"
  fi
exit 0
 
 