#! /bin/bash
# This is a bash script to shred all files in a Linux directory

echo "Enter the filepath of the directory you want to shred:"
read path

for file in $path/*; do
    if [ -f "$file" ]; then
       echo "Shredding $file"
       shred $file;
    fi
done

echo "All files in this directory have been shredded"

