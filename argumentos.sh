#!/usr/bin/env bash

if [ "$1" == "" ]
then
    echo "BALETA SECURITY"
    echo "Modo de uso: $0 192.168.0.20 80"
else
    echo "Explorando o host: $1 na porta $2"
fi