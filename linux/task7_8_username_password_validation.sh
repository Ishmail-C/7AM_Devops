#!/bin/bash

#Task 7 and 8: Username and password validation

echo -e "\n\t\tTask 7 & 8: Username and passwod validation"
echo -e "\t\t--------------------------------------------\n Requirement\n 1. Username must be in Uppercase\n 2. Password must be alphanumeric"

#Validating Username
for ((j=0;j<=3;j++))
do
echo -e " Enter Username:"
read usrnme
len="${#usrnme}"
if test $len -ge 6 ; then
        j=0;
echo "$usrnme" | grep -q [0-9a-z]
        if test $? -eq 0 ; then
                echo "Username contains number and lowercase"
                j=0;
        else
                echo "$usrnme" | grep -q [A-Z]
                echo "Valid username"
                j=3;
        fi
else
echo "User name minimum 6 characters"
j=0;
fi
done
echo -e "\t\t\n User name validated now proceed to password"


for ((i=0;i<=3;i++))
do
echo "Enter the password"
read password
len="${#password}"
if test $len -ge 8 ; then
    echo "$password" | grep -q [0-9]
     if test $? -eq 0 ; then
           echo "$password" | grep -q [A-Z]
                if test $? -eq 0 ; then
                    echo "$password" | grep -q [a-z]
                      if test $? -eq 0 ; then
                       echo "Password is strong"
                       i=3;
                   else
                       echo "lowar case needed"
                   fi
            else
               echo "UPPER CASE needed"
            fi
     else
       echo "Numeric needed"
     fi
else
    echo "Password length not met"
fi
done

echo -e "\t Your username: $usrnme"
echo -e "\t Your Password: $password"
echo -e "\n ----- Task completed -----"
