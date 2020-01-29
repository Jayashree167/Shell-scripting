#!/bin/bash
A=`expr 5 + 5`
B=`expr 10 - 5`
C=`expr 12 + 10`
D=`expr 10 \* 3`
if [[ $A -eq $B || $C -eq $D ]]; then
        echo "Something is equal"
else
        echo "Nothing is equal"
fi
