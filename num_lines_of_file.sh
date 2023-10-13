#!/usr/bin/env bash
read -p "Enter name of the textfile:  " file
num=1
while read line
do
	echo "Line is $num: $line"	
	num=$(( $num + 1 ))
done < $file
