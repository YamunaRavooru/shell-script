#!/bin/bash/

file=$(tac "01countword.sh")

while read -r line
do
echo "$line "

done < $file