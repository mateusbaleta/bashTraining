#!/bin/bash

echo "Qual e a sua idade?"
read -r idade

if [ "$idade" -gt "17" ]

then
    echo "PODE DIRIGIR"

elif [ "$idade" -lt "18" ]
then
    echo "NAO PODE DIRIGIR!"
    
else
    echo "NAO TEM CARTA"
fi