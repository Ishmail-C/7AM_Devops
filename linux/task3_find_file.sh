#!/bin/bash

echo -e "\n\t\t Task 3: Find file in the system"
echo -e "\n\t Enter file name you looking:"
read fname
echo -e "\n\t\t Files you can search below file system directories"
echo -e "\n\t 1. afs \t 2. bin \t 3. boot \t 4. dev \t 5. etc \n\t 6. home \t 7. lib \t 8. lib_64 \t 9. media \t 10. mnt \n\t 11. opt \t 12. proc \t 13. root \t 14. run \t 15. sbin \n\t 16. srv \t 17. sys \t 18. tmp \t 19. usr \t 20. var"

echo -e "Enter the option you want search directory:"
read op
if [ $op -le 20 ]
then
	case $op in
		0) echo " You are really intelligent";;
		1) find /afs/ -name $fname;;
		2) find /bin/ -name $fname;;
		3) find /boot/ -name $fname;;
		4) find /dev/ -name $fname;;
		5) find /etc/ -name $fname;;
		6) find /home/ -name $fname;;
		7) find /lib/ -name $fname;;
		8) find /lib64/ -name $fname;;
		9) find /media/ -name $fname;;
		10) find /mnt/ -name $fname;;
		11) find /opt/ -name $fname;;
		12) find /proc/ -name $fname;;
		13) find /root/ -name $fname;;
		14) find /run/ -name $fname;;
		15) find /sbin/ -name $fname;;
		16) find /srv/ -name $fname;;
		17) find /sys/ -name $fname;;
		18) find /tmp/ -name $fname;;
		19) find /usr/ -name $fname;;
		20) find /var/ -name $fname;;
	esac
else
	echo -e " \n\t\t Option:\"$op\" not available but your File:\"$fname\" spotted in below directories"
	find / -name $fname
fi
exit
