#!/bin/bash
echo "</title></head><body>" >> /var/www/html/index.html

echo "<h1>container name: `hostname`</h1>" >> /var/www/html/index.html

echo "<h1>Container Ip:</h1>" >> /var/www/html/index.html
echo "<pre> $(hostname -I) </pre>" >> /var/www/html/index.html

echo "<center>Information generated on $(date)</center>" >> /var/www/html/index.html

echo "</body></html>" >> /var/www/html/index.html

 httpd && bash
