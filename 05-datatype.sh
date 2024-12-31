#!/bin/bash

NUMBER1=$1
NUMBER2=$2
TIMESTAMP=$(date)
echo "script executed at:$TIMESTAMP"
SUM=$(($Number1+$Number2))

echo "sum of 2 numbers is:$SUM"