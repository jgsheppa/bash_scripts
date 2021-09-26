#! /bin/bash

# This loops through the arguments given to the script
for FILE in $@ 
do
  # This checks if the chosen data is a file
  if [ -f "$FILE" ] 
  then
    echo "$FILE is a file"
    # This checks if the chosen data is a directory
  elif [ -d "$FILE" ] 
  then
    echo "$FILE is a directory"
  else 
    echo "$FILE is neither a file or directory"
  fi
  
  ls -l $FILE

done
