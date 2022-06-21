#!/bin/bash
#this scripting prints sever details of jenkins

#1)This is going to print the Wan/public IP

myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "My WAN/Public IP address: ${myip}"
echo

#2)Checking the jenkins port open or not 

JENKINS_PORT=$(netstat -tulpn | grep 8080)
if [[ "${?}" -eq 0 ]]
then 
	echo "your jenkins port is active"
	echo "${JENKINS_PORT}"
else
	echo "Please start your jenkins port :)"
fi

echo
echo

#3)This will print the url for the jenkins portal

echo "To start jenkins please copy the below URL and paste in your browser:-"
echo
echo "${myip}:8080"
echo
echo

