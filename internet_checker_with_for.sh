#!/usr/bin/env bash
echo "Now, we are going to check some domain:"
echo "ukr.net, google.com, facebook.com, yandex.ru"
echo
for i in ukr.net google.com facebook.com yandex.ru
do
	ping -c4 -q $i &> /dev/null && echo "$i is available" || echo "$i is unreached"
done
