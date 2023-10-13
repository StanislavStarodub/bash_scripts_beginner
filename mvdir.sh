#!/bin/bash
if [ $# -ne 2 ]
then
	echo "2 arguments are neded: directory being moved and target directory"
	exit 1
fi

# Check if dir exsist or it's no file
if [ ! -d "$1" ]
then 
	echo "Error! The $1 does'nt exist or no directory."
        exit 1

fi

if [ ! -d "$2" ]
then 
	echo "Error! The $2 does'nt exist or no directory."
        exit 1
fi

#Delete dir only if copied successfully
if cp -r "$1" "$2" && rm -rf "$1"
then
echo "Directory $1 was successfully moved or renamed to directory $2"
exit 0
else
	echo "Somthing went wrong!"
	exit 1
fi
