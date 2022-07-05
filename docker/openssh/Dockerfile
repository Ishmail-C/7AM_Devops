FROM centos:7
RUN yum install openssh* -y;yum install initscripts -y;yum install httpd -y;
COPY entrypoint.sh /
RUN chmod 777 /entrypoint.sh
ENTRYPOINT [ "/bin/bash", "-c", "usr/sbin/httpd && bash", "/usr/sbin/sshd && bash", "-D", "/entrypoint.sh" ]
RUN service sshd start
RUN mkdir /var/run/sshd
RUN echo 'root:ishmail' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN service sshd restart
EXPOSE 22
CMD ["sudo systemctl enable sshd.service"]

