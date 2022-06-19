#!/bin/bash
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
