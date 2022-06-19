#!/bin/bash

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

echo -e "\t Your Password: $password"
