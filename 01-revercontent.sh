#!/bin/bash/

file=$(tac "01-variable.sh")

while read -r line
do
echo "$line \n"

done < $file