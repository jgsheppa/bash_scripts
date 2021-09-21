#! /bin/bash

echo "Enter the filepath of the directory you want to shred:"
read path

for file in $path/*; do
    if [ -f "$file" ]; then
       echo "Shredding $file"
       shred $file;
    fi
done

echo "All files in directory have been shredded"

