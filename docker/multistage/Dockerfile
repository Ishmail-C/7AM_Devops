FROM centos:7 AS system
ENV user=Ishmail_CS
RUN yum install httpd -y
COPY entrypoint.sh /
RUN chmod 777 /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

FROMventos:7 as git
RUNyuminstallgit-y

FROMcentos:7 as jenk
RUNyuminstallopenjdk-y;yuminstalljenkins-y

FROM centos:7 AS docker
RUN yum install docker -y
