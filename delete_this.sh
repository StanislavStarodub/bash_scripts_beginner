#!/usr/bin/env bash
# This script archives and remooving file to the TRASH
# Also it checks for old files in the TRASH

TRASHDIR=~/TRASH
FILENAME="$1"
ARCHIVENAME="$FILENAME".bz
INODE=$(stat -c '%i' $FILENAME)
TMPFILE="/tmp/deletesh.tmpfile"

# Check for script's argument
if [ $# -ne 1 ]
then
	echo "Please provide file name as an argument"
	exit 1
fi

# Mkdir if it does not exist '-p'
mkdir -p $TRASHDIR

# Check for old files and delete them

find $TRASHDIR  -type f -mtime +2 -delete

# Check script's argument if it is file

if [ ! -f "$FILENAME" ]
then
	echo "The $FILENAME is not file name or does not exist"
	exit 1
fi

if [ -f $TRASHDIR/$ARCHIVENAME ]
then
	echo "File $ARCHIVENAME already exist, you cannot safely delete $FILENAME"
	exit 1
fi

if [ -L $FILENAME ]
then
	realpath=$(readlink $FILENAME)
	unlink $FILENAME
	echo "$FILENAME was a symbolic link to the $realpath"
	exit 0
fi

find $HOME -inum $INODE 2>/dev/null > $TMPFILE

if [ $(cat $TMPFILE | wc -l) -ge 2 ]
then
	rm $FILENAME
	echo "The file you deleted was a hardlink. There are still files with the same inode:"
	echo $(grep -v $FILENAME $TMPFILE)
	rm $TMPFILE
	exit 0
fi

gzip -c $FILENAME > $TRASHDIR/$ARCHIVENAME && rm $FILENAME || echo "Somthing went wrong!"
