#!/bin/bash

echo "User Name Script"
# username must be 'string'
# username must be 'UPPERCASE'
# username should not contain spaces

read -p "Enter an UserName: " username

# While loop for UpperCase Characters and a non-zero length input
while [[ "$username" =~ [^A-Z] || -z "$username" ]]
do        
   echo "The input contains special characters or LowerCase."     
   echo "Input only Uppercase characters."     
  
# loop until the user enters only Uppercase characters.
   read -p "Enter an UserName: " username

done

echo "Received the correct User Name as: $username"