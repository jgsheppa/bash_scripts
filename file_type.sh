#! /bin/bash

# This loops through the arguments given to the script
for FILE in $@ 
do
  if [ "$FILE" = "file_type.sh" ]
  then 
    echo "This script is a file."
  # This checks if the chosen data is a file
  elif [ -f "$FILE" ] 
  then
    echo "$FILE is a file"
    exit 0
  # This checks if the chosen data is a directory
  elif [ -d "$FILE" ] 
  then
    echo "$FILE is a directory"
    exit 1
  else 
    echo "$FILE is neither a file or directory"
    exit 2
  fi
  
  ls -l $FILE

done
