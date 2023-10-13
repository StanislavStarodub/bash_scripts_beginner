#!/usr/bin/env bash
echo "This is a program that calculates your age!"
read -p "Enter year of your birth (for exmp. 1999): " year

#now=$(date +'%Y')
echo "Your age is: " $(expr "$(date +'%Y')" - "$year")  
