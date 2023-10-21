#!/usr/bin/env bash
directory="/etc"
find $directory -maxdepth 1 -type f |
	while read line
	do
		if [ -f "$line" ]
		then
			wc -l $line
		else
			continue
		fi
	done

