#!/usr/bin/env bash

#Learning script to sweep devices on the network with ping

if [ "$1" == "" ]
then
    echo "BALETA SECURITY"
    echo "-------------"
    echo "Usage: $0 IP"
    echo "Example: $0  192.168.0"
else
    for host in {1..254};
    do
    ping -c1 "$1.$host" | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//';
    done
fi