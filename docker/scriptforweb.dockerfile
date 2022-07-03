#!/bin/bash
echo "</title></head><body>" >> /var/www/html/index.html

echo "<h1>container name: `hostname`</h1>" >> /var/www/html/index.html

echo "<h1>Container Ip: `hostname -I` </h1>" >> /var/www/html/index.html

echo "<h1>Container Created on : `date` </h1>" >> /var/www/html/index.html

echo "</body></html>" >> /var/www/html/index.html

 httpd && bash
