#!/usr/bin/env bash
echo "This program for stdout even numbers"
read -p "Enter start number: " start_num
read -p "Enter finish number: " finish_num
while [ $start_num -le $finish_num ]
do
	divider=$(( $start_num % 2 )) 
	if [ $divider -eq 0 ] 
	then
		echo "$start_num"
	fi
	start_num=$(( $start_num + 1 ))
done


