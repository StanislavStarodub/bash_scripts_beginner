#!/usr/bin/env bash
echo "This program culculates the biggest number"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then 
	echo "The biggest number is $num1"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
	
then 
	echo "The biggest number is $num2"

elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ]
	
then 
	echo "The biggest number is $num3"
else 
	echo "Somthing wrong..."
fi

