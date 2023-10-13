#!/bin/bash
if [ $# -lt 2 ]
then
	echo "2 arguments are neded: directory being renamed and new name  directory"
	exit 1
fi

# Check if dir exsist or it's no file
if [ -d "$1" ] || [ -e "$1" ]
then 
#Delete dir only if copied successfully
	if cp -r "$1" "$2" && rm -rf "$1"

	then
		echo "Directory/file $1 was successfully renamed to $2"
		exit 0
	else
		echo "Somthing went wrong!"
		exit 1
	fi
else
	echo "Error! The $1 does'nt exist or no directory/file."
        exit 1
fi

