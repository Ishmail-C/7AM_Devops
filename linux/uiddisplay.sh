#!/bin/bash
#TO DISPLAY THE USER ID

echo "Your UID is ${UID}"

if [[ ${UID} -eq 0 ]]
then
	echo " You are Root USER"
else
	echo " You are not a ROOT USER"

fi
