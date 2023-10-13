#!/usr/bin/env bash
until cat report.txt
do
	echo "Waiting for file report.txt..."
	sleep 7
done
