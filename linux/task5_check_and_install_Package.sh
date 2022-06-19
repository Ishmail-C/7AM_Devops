#!/bin/bash

# Task 5: Package installer

echo -e "\n\t\t --------- Package Installer & Upgrader --------\n"
echo -e "\t Enter the name of the package:"
read pkg   #Reading package name


if rpm -q "$pkg"; then     #Checking in system package is installed or not
	echo -e"\t $pkg is Installed"
	echo -e "\t\n------ Available new versions ------"
	yum list | grep $pkg
read -r -p "Do you want to upgrade $pkg [y/n]:" op
	case "$op" in
		[yY][eE][sS]|[yY])
			yum upgrade $pkg   #Upgrade existing package
			echo -e "\t \"$pkg\" upto date!!!" ;;
		*)
			echo -e "Package not upgraded"
	esac
else
	echo -e "Package not found in your system"
	echo -e "\t\n------ Here is your packages------"
	yum list | grep $pkg
	echo -e "\t\n Package \"$pkg\" not installed Do you want to install now [y/n]:"
	read agree
	case "$agree" in
		[yY][eE][sS]|[yY])
			yum install $pkg   #Instaling the package
			echo -e "\t \"$pkg\" Installation completed!!!" ;;
	*)
		echo -e "Package not installed"
	esac
fi
echo -e "\t\t\n ------ Task completed ------"
