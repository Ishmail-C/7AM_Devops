#!/bin/bash
echo "<h1>Docker container with open ssh </h1>" >> /var/www/html/index.html
echo "<h2>`hostname`</h2>" >> /var/www/html/index.html
echo "<h3>`hostname -I`</h3>" >> /var/www/html/index.html
httpd && bash
/etc/init.d/ssh start
/usr/sbin/sshd
sudo systemctl restart sshd.service

