#!/bin/bash

echo " What Package would you like to Check for and try to Install"
read package

if [ -z "$package" ]; 
then
   echo "You did not input a package name! Exiting!"
   exit 1  
else
   echo "Got it.. Progressing Ahead!"
fi

if [ $(dpkg-query -W -f='${Status}' $package 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    echo " Package is not installed, will attempt to install it now as Root."
    sudo apt-get -y install $package;
else
    echo "Package is already installed"
fi