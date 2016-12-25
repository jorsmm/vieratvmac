#!/bin/bash

/Users/casa/enciendetv/ifup.sh en0

while [ 1 ]
do
date
/usr/bin/curl -s "192.168.1.1" --connect-timeout .3 -m .3 > /dev/null
if [ $? != 0 ]
then
	echo -e "NO hay red aun"
	sleep .5
else
	echo "Ya Hay red"
	/Users/casa/enciendetv/wolcmd A8137436C70F 255.255.255.255 255.255.255.255 7
	break
fi
done
