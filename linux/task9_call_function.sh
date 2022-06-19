#!/bin/bash

echo -e "\t\t\n Task 9: Calling other file from working script"
echo -e "\t\t-----------------------------------------------"
echo -e "\n"
echo -e "\t\t1. Calling Username validation \n"
source ./username.sh
echo -e "\n \n \t\t2. Calling Password validation\n"
source ./password.sh
echo -e "\n\n\t\t 3. Calling IPV4 validation \n"
source ./task6_validate_IP_address.sh
