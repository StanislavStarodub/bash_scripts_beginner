#!/bin/bash
# This program needs an argument - archive file name with extention. Ex.: my_arc.xz

#if  [ dpkg -l unzip &>/dev/null ]
#then
#	echo "Unzip is install, we are good to go!"
#else
#	echo "Unzip is not installed, please install it with 'sudo apt-get install unzip'"
#	exit 1
#fi

if [ $# -ne 1 ]
then
	echo "Please provide archive name is an argument."
	exit 1
fi

if [ ! -f $1 ]
then 
	echo "$1 does not exist or not a file"
	exit 1
fi

case $1 in
	*.bz2) bunzip $1;;
	*.gz) gunzip $1;;
	*.zip) unzip $1;;
	*.xz) unxz $1;;
	*.lzma) unlzma $1;;
	*) echo "Archive format does not recognized!"
esac
