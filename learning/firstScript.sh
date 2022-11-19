#!/bin/bash

#Learning script

echo "   BALETA SECURITY" #print
echo "<------------------->"
echo "Sistema ligado por: $(uptime -p)"
echo "Diretorio atual: $(pwd)" 
echo "O user atual: $(whoami)"

echo "Digite o IP: "
read -r ip

# echo "Digite a Porta: "
# read -r porta
# echo "Varrendo o host: $ip na porta $porta"
echo "Efetuando ping no Host: $ip"
ping -c1 "$ip"