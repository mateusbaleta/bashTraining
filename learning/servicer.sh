#!/bin/bash

#Learning script

echo "   BALETA SECURITY" #print
echo "<------------------->"
echo "Digite o serviço que sera iniciado: "
read -r var1

service "$var1" restart


echo "Servicos ativos: "

ps aux | grep "$var1"

echo "Portas abertas: "

netstat -nlpt