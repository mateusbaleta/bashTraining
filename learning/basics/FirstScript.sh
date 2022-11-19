#!/bin/bash

#Learning script

echo "   BALETA SECURITY" #print
echo "<------------------->"
echo "Sistem uptime: $(uptime -p)"
echo "|Current directory: $(pwd)" 
echo "Current user: $(whoami)"

echo "Type the IP: "
read -r ip

# echo "Digite a Porta: "
# read -r porta
# echo "Varrendo o host: $ip na porta $porta"
echo "Performing ping on Host: $ip"
ping -c1 "$ip"