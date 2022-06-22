#!/bin/bash

echo "Password Script Running"
# password must be "alphanumeric"
# password must be "upper+lower case"

read -p "Enter an alphanumeric Password: " inp

# While loop for alphanumeric characters and a non-zero length input
while [[ "$inp" =~ [^a-zA-Z0-9] || -z "$inp" ]]
do        
   echo "The input contains special characters."     
   echo "Input only alphanumeric characters."     
  
# loop until the user enters only alphanumeric characters.
   read -p "Enter  an alphanumeric Password: " inp
done

echo "Successful Data for Password Received , Password is: $inp"