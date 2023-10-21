#!/usr/bin/env bash

#  If we need backup only user hoem dir:

#now=$(date "+%d_%m_%Y")
#name=username_"$USER"_"$now".tar.xz
#tar -cvJf /home/devops/"$name" $HOME/*


# IF we need back up anydir
now=$(date "+%d_%m_%Y")
source_dir="$HOME"  # or any directory
distanation_dir="/home/devops/"
backup_name="$distanation_dir""$USER"_backup_"$now.tar.xz"

if [ ! -d $source_dir ] 
then
	echo "$source_dir does not exist or not a directory"
	exit 1
fi

if [ ! -d $distanation_dir ] 
then
	echo "$distanation_dir does not exist or not a directory"
	exit 1
fi

if tar -cJpf $backup_name $source_dir
then
	echo "Data from the $source_dir backup succesfully"
	exit 0
else
	echo "An error occured during the backup"
	exit 1
fi

