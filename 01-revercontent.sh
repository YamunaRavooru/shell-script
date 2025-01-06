#!/bin/bash/

file=$(tac hello.sh)

while read -r reverse
do
echo $reverse

done < $file