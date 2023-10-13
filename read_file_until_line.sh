#!/usr/bin/env bash
echo "I read a file and I'm waiting for string: crone2023"
while read line
do
if [ "$line" = "crone2023" ]
then
	echo "I found my line"
	break
fi
echo $line
done < logfile

