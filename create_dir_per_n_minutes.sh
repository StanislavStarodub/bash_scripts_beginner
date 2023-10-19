#!/usr/bin/env bash
echo "The program create n directories per n minutes"
echo
read -p "Enter number n: " num
i=0;
timer=$(( $num * 20 ))
while [ $i -lt $num ]
do
	i=$(( $i + 1 ))
	date_n=$(date "+%Y%m%d_%H%M")
	mkdir "/tmp/Directory-$i-$date_n"
	echo "The $i dir was create"
	sleep $timer
done
