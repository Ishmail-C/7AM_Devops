#!/bin/bash

# Script for to finding file of java file in the system and filter recent 10 days fils and delete those
echo -e " \n\t\tScript for to finding file of java file in the system and filter recent 10 days fils and delete those"
echo "How many days older files you looking?:"
read days
echo -e "\n\t\t Here are the \"$days\" older files"
find / -name \*.log -type f -mtime -$days -ls
echo -e "\n"
read -r -p " Do you want to delete the above listed items [y/N]" op
case "$op" in
	[yY][eE][sS]|[yY])
		find / -name \*.log -type f -mtime -$days -delete
		echo -e "\n\t Deleted those Items" ;;
	*) 
		echo -e " \n\t Files are safe"
		exit
esac


