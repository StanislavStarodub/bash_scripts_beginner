#!/usr/bin/env bash
read -p "Enter username: " username
if [ "$username" == "Stas" ]
then
	#-s hide password
	read -s -p "Enter password: " password
	if [ "$password" == "123" ]
	then 
		echo "Welcome, $username!"
	else
		echo "Invalid password!"
		exit 1
	fi

else
	echo "Invalid username!"
	exit 1
fi
