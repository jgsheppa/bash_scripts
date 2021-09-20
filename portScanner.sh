#! /bin/bash

echo "Enter the starting IP address:"
read FirstIP

echo "Enter the last octet of the last IP address:"
read LastOctetIP

echo "Enter the port number you want to scan for:"
read port

nmap -sT $FirstIP-$LastOctetIP -p $port -oG PortScan

cat PortScan | grep open > PortScan2

cat PortScan2
