#!/usr/bin/env bash
echo "Who do you want advice from?"
while true
do
echo
cat << options
bunny
tux
daemon
kitty
vader-koala

Print "quit" to exit...
options
echo
read -p "Enter your choice: " option
if [ $option == 'quit' ]
then
	break
fi
echo
fortune | cowsay -f $option
done
