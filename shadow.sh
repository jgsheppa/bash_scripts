#! /bin/bash

FILE="/etc/shadow"

if [ -e "$FILE" ]
then
    echo "You have permissions to edit /etc/shadow"
    exit 0
else
    echo "You do not have permissions to edit /etc/shadow"
    exit 1
fi
