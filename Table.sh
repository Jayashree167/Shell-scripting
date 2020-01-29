#!/bin/bash
echo "Enter a number to display its 'Table'"
read num
echo "***Table of $num is as follows***"
for ((i=1;i<=10;i++))
do
     table=`expr $num \* $i`
     echo $table
done
