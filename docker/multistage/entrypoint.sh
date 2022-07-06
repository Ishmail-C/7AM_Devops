#!/bin/bash

echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><strong><span style='font-size:24px;line-height:107%;font-family:"Comic Sans MS";color:#C55A11;'>DOCKER-Container Details</span></strong></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><br></p>" >> /var/www/html/index.html
echo "<hr>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><a href="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png"></a></p>" >> /var/www/html/index.html
echo "<p style="text-align: center;"><br></p>" >> /var/www/html/index.html
echo "<p style="text-align: center;"><a href="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png"><a href="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png"></a></p>" >> /var/www/html/index.html
echo "<p><a href="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png"><br></a></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Hostname</span></u></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>`hostname`</span></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Container IP</span></u></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>`hostname -I`</span></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Owner</span></u></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>$user</span></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Date &amp; Time</span></u></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>$(date + '%dd/%mm/%yyyy')</span></p>" >> /var/www/html/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><br></p>" >> /var/www/html/index.html

httpd && bash

