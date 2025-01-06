#!/bin/bash/

file=$(tac hello.sh)

while read -r line
do
echo $line

done < $file