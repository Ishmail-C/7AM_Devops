#!/bin/bash

echo "Enter the file name:"
read file1

if [ -z "$file1" ]; 
then
   echo "You did not input a name! Exiting!"
   exit 1  
else
   echo "Got it.. Progressing Ahead!" 
fi

echo "Searching for the File"
sleep 2
find / -iname $file1 2>/dev/null
some_var="$(find / -iname $file1 2>/dev/null)"

if [ -z "$some_var" ]; 
then
   echo "$file1 does not exist, Exiting"
   exit 1  
else
   echo "Found the file in the above locations" 
fi

echo "Copy and Paste the path with file name you want to work on!"
read file

if [ -z "$file" ]; 
then
   echo "You did not select a file, Thanks for not wasting my time! Exiting"
   exit 1  
else
   echo "OK! Lets Go..." 
fi

# Screen is too cluttered at this stage so clearing the contents
clear

# Checking if the File Exists
echo "Lets re-check if the input file exists, just for Fun!"
if [ -e $file ]
then
   echo "$file exists"
else
   echo "$file does not exist now, Cannot trust you.... Exiting"
   exit 1   
fi

# Checking if the input is a Directory or File
echo "Lets check if the input data is a Directory or a File."
if [ -d $file ]
then
   echo "$file is a directory, I asked for a file Genius... Exiting"
   exit 1
else
   echo "$file is a file"
fi

# Starting File Operations..
echo "Lets Count the words"
word=$(wc -w <$file)
echo "Number of Words = $word"

echo "Lets Count the Characters"
char=$(wc -m <$file)
echo "Number of Characters = $char"

echo "Lets Count the bytes"
byte=$(wc -c <$file)
echo "Number of Bytes = $byte"

echo "Lets Count the lines"
line=$(wc -l <$file)
echo "Number of Bytes = $line"

echo "Lets Count the special characters"
special=$(expr length "${file//[^\~!@#$&*()]/}")
echo "Number of Special symbols = $special"

echo "Some further work...."
echo "Enter a word you want to search"
read word1

exists=$(grep -c $word1 $file)
if [[ $exists -gt 0 ]]; then
    echo "$word1 Word was found a total of $exists lines"
fi

echo "Done with File Operations!"