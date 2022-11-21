#!/usr/bin/env bash

#testing for loop

for ip in $(seq 100 120);
do
echo 192.168.0."$ip";
done