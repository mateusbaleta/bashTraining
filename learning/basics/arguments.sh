#!/usr/bin/env bash

if [ "$1" == "" ]
then
    echo "BALETA SECURITY"
    echo "Usage: $0 192.168.0.20 80"
else
    echo "Exploring host: $1 on port $2"
fi