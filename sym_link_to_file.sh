#!/usr/bin/env bash
#  Script that will "turn" symbolic links into a regular file with the contents located at the symbolic link
if [ $# -ne 1 ]
then
	echo "Please provide symlink as an argument"
	exit 1
fi

if [ ! -L $1 ]
then
	echo "Argument is not symlink"
	exit 1
fi

mv $(readlink $1) $1
