#!/bin/bash
echo "Enter the full path of the folder for which information is required"
read path
echo "Enter one for ascending order and two for descending order"
read choice
if [ $choice = 1 ]; then
	du -m $path | sort -n
else
	du -m $path | sort -n -r
fi
