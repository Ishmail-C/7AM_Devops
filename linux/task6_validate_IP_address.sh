#!/bin/bash


#Validating IP4 Address

echo -e "\t\t\n------ Task 6: Validating ip address ------"
echo -e "\n Your IP address"
ip4=`hostname -i | awk '{print $NF}'`
ip6=`hostname -i | awk -F "%" '{print $NR}'`
echo -e "\t 1. IPV4: $ip4 \n\t 2. IPV6: $ip6"

b1=`echo "$ip4"|xargs|cut -d "." -f1`
b2=`echo "$ip4"|xargs|cut -d "." -f2`
b3=`echo "$ip4"|xargs|cut -d "." -f3`
b4=`echo "$ip4"|xargs|cut -d "." -f4`


echo -e "\n\t ----- IP validation -----"    

if [[ $ip4 =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ && $b1 -ge 0 && $b1 -le 255 && $b2 -ge 0 && $b2 -le 255 && $b3 -ge 0 && $b3 -le 255 && $b4 -ge 0 && $b4 -le 255 ]]; then 
	echo -e "\t IPV4 \"$ip4\" is valid "
    else 
	    echo -e "\t $ip4 is invalid"

	    
	    #IPV6 scripting work pending
	    #if [[ $ip6 =~ ^[0-9a-f]{1,4}\:[0-9a-f]{1,4}\:[0-9a-f]{1,4}\:[0-9a-f]{1,4}\:[0-9a-f]{1,4}\:[0-9a-f]{1,4}$ ]]  then
    #echo -e"\t IPV6 \"$ip6\" is valid " 
    #else

fi
echo -e "\n\t ----- Task completed -----"
