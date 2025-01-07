#!/bin/bash

echo Enter the number for multiplication: $1
 

 for i in {1..10}
 do
    res=$(( $1 * $i)) 
   echo "$1 x $i" =$res

 done  