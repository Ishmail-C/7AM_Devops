FROM centos:7 AS system
ENV user=Ishmail_CS
RUN yum install httpd -y
COPY entrypoint.sh /
RUN chmod 777 /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

FROM ventos:7 as git
RUN yuminstallgit-y

FROM centos:7 as jenk
RUN yuminstallopenjdk-y;yuminstalljenkins-y

FROM centos:7 AS docker
RUN yum install docker -y
