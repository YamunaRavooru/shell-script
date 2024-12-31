#!/bin/bash

NUMBER1=$1
NUMBER2=$2
TIMESTAMP=$(date)
echo "script executed at:$TIMESTAMP"
echo "number1=$NUMBER1 number2=$NUMBER2"
SUM=$(($NUMBER1+$NUMBER2))

echo "sum of 2 numbers is:$SUM"