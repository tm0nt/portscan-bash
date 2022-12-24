#!/bin/bash

if [ "$1" == "" ]
then
	echo "ZymyX Services"
	echo "Modo de uso: $0 192.168.0.1"

else

for port in {80..4000};
do
hping3 -S -p $port -c 1  $1 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | sed  "s/ip=/$port ==> Porta Aberta /g " ;
done
fi
