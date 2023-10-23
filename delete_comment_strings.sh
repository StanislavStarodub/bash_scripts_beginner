#!/usr/bin/env bash

FILENAME="$1"
EDITEDFILE=no_comment_"$FILENAME"

if [ $# -ne 1 ]
then
	echo "Please provide file name as an argument"
	exit 1
fi

sed '1p;/^#/d' $FILENAME > $EDITEDFILE

echo "File or script $FILENAME without comments is stored in $EDITEDFILE"
