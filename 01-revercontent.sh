#!/bin/bash/

file=$(tac "01-variable.sh \n")

while read -r line
do
echo $line

done < $file