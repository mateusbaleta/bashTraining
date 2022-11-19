#!/bin/bash

#Learning script to start services

echo "   BALETA SECURITY" #print
echo "<------------------->"
echo "Which service should be initiated?"
read -r var1

service "$var1" restart


echo "Active services: "

ps aux | grep "$var1"

echo "Open ports: "

netstat -nlpt