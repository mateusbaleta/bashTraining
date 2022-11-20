#!/usr/bin/env bash

# 1> stdout  2> stderr  0> stdin
if [ "$1" == "" ]
then
    echo "BALETA SECURITY - PORTSCAN NETWORK"
    echo "Usage: $0 IP PORTA"
    echo "Exemplo: $0 192.168.0 80"
else
    for ip in {1..254};
    do
    hping3 -S -p "$2" -c 1 "$1.$ip" 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
    done
fi