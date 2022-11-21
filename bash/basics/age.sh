#!/bin/bash

echo "What's your age?"
read -r age

if [ "$age" -gt "17" ]

then
    echo "YOU CAN DRIVE!"

elif [ "$age" -lt "18" ]
then
    echo "YOU CAN'T DRIVE!"
    
else
    echo "YOU DON'T HAVE A LICENSE"
fi