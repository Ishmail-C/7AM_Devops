FROM ishmail/alpnine1:latest
ENV user=Ishmail_CS
RUN apk update;apk upgrade;apk add --no-cache;apk add bash;apk add bash-doc;apk add bash-completion;mkdir -p /run/apache2;

WORKDIR /var/www/html/
COPY  index.html  /var/www/html 

EXPOSE 80
CMD ["httpd && bash"]


