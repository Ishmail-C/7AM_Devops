#!/bin/bash

echo "Enter the path where you want to search for java files"
read path

if [ -z "$path" ]; 
then
   echo "You did not input a path! Exiting!"
   exit 1  
else
   echo "Got it.. Progressing Ahead!"
   echo "Will Find all Files that were modified 10 days ago and Delete them!"
fi

find . -type f -name "*.java" -mtime 10;
echo "Found the above Files, Proceeding with Deletion."
find . -type f -name "*.java" -mtime 10 -exec rm -f {} \;
