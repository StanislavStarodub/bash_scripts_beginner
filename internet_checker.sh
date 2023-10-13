#!/usr/bin/env bash
if host ukr.net &>/dev/null
then 
	echo "DNS resolve fine!"
else
	echo "DNS resolve isn't available..."
fi

if ping -c4 8.8.8.8 &>/dev/null
then
	echo "PING works!"
else
	echo "PING doesn't work..."
	exit 1
fi

ping -q -c4 8.8.8.8 | tail -3
