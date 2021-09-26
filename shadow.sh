#! /bin/bash

FILE="/etc/shadow"

if [ -e "$FILE" ]
then
    echo "You have permissions to edit /etc/shadow"
else
    echo "You do not have permissions to edit /etc/shadow"
fi
