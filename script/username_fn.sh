#!/bin/bash

echo " User Name Script - Work in Progress"
# username must be 'string'
# username must be 'UPPERCASE'
# username should not contain spaces

read -p "Enter username: " username

# if [[ "$username" =~ ^[A-Z] ]];  
# then
# echo "The UserName is upper case";
# fi

username=$(echo $username | tr ‘[a-z]’ ‘[A-Z]’)

echo $username