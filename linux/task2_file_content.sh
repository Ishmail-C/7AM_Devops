#!/bin/bash


echo -e "$(tput setaf 2)\n\t\t The below Details about \"Messages\" file under \"var\" directory"
ls -sh /var/log/messages
wc /var/log/messages
echo -e "$(tput setaf 4) \n\t 1. Search word in \"var/log/messages\" \n\t 2. Replace word"
echo -e "$(tput setaf 3) \n 1. Enter word you want to search in var/log/messages:"
read word
grep $word /var/log/messages | tail -10 > messages.txt
echo -e "$(tput setaf 6)\t\t\n  New file \"messages.txt\" created from \"var/log/messages\"\n\n"
grep -n $word messages.txt
echo -e "$(tput setaf 5) \n 2. Enter word you want to replace from $word:"
read replace
sed -i "s/$word/$replace/g" messages.txt
echo -e "\n"
cat -n messages.txt
rm messages.txt
echo -e "$(tput setaf 1)\t\t\n\n File \"messages.txt\" file deleted\n\n"
