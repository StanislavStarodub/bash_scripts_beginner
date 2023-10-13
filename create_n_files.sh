#!/usr/bin/env bash
read -p "Enter common name of files: " name
read -p "Enter number of files you want to create: " num_files
i=1
while [ $i -le $num_files ]
do
	touch $name$i.txt
	echo "File $name$i is created!"
	i=$(( $i + 1 ))
done	

