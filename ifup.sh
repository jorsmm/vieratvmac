#!/bin/sh
while [ "`ifconfig | sed -n '/^'$1'/,/^[a-z]/ s/.*status: \(.*\)$/\1/p'`" != "active" ]
do
echo interface $1 is not up
sleep .5
done

echo interface $1 is now UP
