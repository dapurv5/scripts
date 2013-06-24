#!/bin/bash 
COUNTER=1
n=$#
while [  "$n" -ne 0 ]
do
	#n=$COUNTER
	echo `du -s $1` >>out
	shift
	n=`expr $n - 1`
done
echo "Enter 1 for ascending order and 2 for descending order"
read choice
if [ $choice = 1 ]; then
	cat out |sort -n
else
	cat out |sort -n -r
fi
rm out

