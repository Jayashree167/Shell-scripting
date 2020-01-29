#!/bin/bash
A=`expr 7 + 8`
B=`expr 8 - 7`
if [ $A -eq $B ]; then
        echo "$A is equal to $B"
elif [ $A -ne $B ]; then
        echo "$A and $B are not equal"
elif [ $A -le $B ]; then
        echo "$A is less than or equal to $B"
elif [ $A -ge $B ]; then
        echo "$A is greater than or equal to $B"
fi
