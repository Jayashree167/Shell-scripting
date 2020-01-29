#!/bin/bash
a=0
while [ $a -lt 25 ]
do
    echo "Hello World, the cirrent value of a : $a"
    a=`expr $a + 1`
done
