#!/usr/bin/env bash

# Generate in random seconds

while true 
do
read -p "If you want some text press 'y', else press 'exit' " option
if [ "$option" == "y" ] 
then

	num=$(awk 'BEGIN {srand();print int(rand()*100)}') 
	echo "wait $num seconds" 
	sleep $num
	fortune
	continue
elif [ "$option" == "exit" ]
then 
	echo "Finish!!!"
	break
else 
	echo "Wrong typing... Try again"
	continue
fi
done

