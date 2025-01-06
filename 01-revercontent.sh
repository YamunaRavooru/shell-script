#!/bin/bash/

file=$(tac loops.sh)

while read -r reverse
do
echo $reverse

done < $file