#!/bin/bash

 datetoday="$(date|cut -d ' ' -f 1)"
 s2="sun"

if ( $datetoday == $s2)
then
  echo "today is  $datetoday :: holiday"
 else
 echo "today is working day ::$datetoday" 
 fi