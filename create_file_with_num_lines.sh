#!/usr/bin/env bash
echo "This scrip generates strings from 'fortune'"
echo "and inserts number of the lines"

echo
read -p "Enter number of string you'd like generate:  " num_str

# With WHILE loop

#num=0
#while [ $num -le $num_str ]
#do
#	num=$(( $num + 1 ))
#	echo $num $(fortune)
#done

# With for loop

echo > fortune_file.txt
for i in $(seq 1 $num_str)
do
	echo $i $(fortune) >> fortune_file.txt 
	
done
cat fortune_file.txt
