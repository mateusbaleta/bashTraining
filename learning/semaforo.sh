#!/bin/bash

echo "Qual e a cor do semaforo?"
read -r cor

if [ "$cor" == "verde" ]

then
    echo "Siga em frente!"

elif [ "$cor" == "amarelo" ]
then
    echo "AGUARDE!"
    
else
    echo "PARE!"
fi