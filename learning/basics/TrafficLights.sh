#!/bin/bash

echo "What's the traffic light color?"
read -r color

if [ "$color" == "green" ]

then
    echo "GO!"

elif [ "$color" == "yellow" ]
then
    echo "WAIT!"
    
else
    echo "STOP!"
fi