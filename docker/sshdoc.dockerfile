FROM centos:7
MAINTAINER zehara
LABEL version="1.0" location="India" type="centos-with-ssh" 
RUN yum update -y;yum install openssh* -y;yum install vim -y;yum install initscripts -y;
RUN service sshd restart
EXPOSE 22

