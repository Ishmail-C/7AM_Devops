#!/bin/bash
osdistribution=`hostnamectl | grep Operating | awk '{ print $3 " " $4 " " $5 " " $6 }'`
distribution=`hostnamectl | grep Operating | awk '{ print $3 }'`
echo -e "\n\n\t\t\t\t**************************************************"
echo -e "\t\t              \t\t    Linux - Package Installer                        "
echo -e "\t\t\t\t**************************************************\n"
echo -e "Your OS is \t\t\t: `uname`"
echo -e "Your OS distribution is\t\t: $osdistribution"
echo -e "-----------------------------------------------------------\n"
echo -e "\n\t 1. apache/http \t 2. java \t 3. sshd \t 4. git \t 5. jenkins \n\t 6. docker \t 7. kubernetes/kubeadm \t 8. ansible \t 9. terraform \t 10. nagios \n\t 11. graphana"
echo -e "Enter the option to install package:"
read op

if [ $op -eq 1 ]
then
	sleep 5
	echo -e "***************** You are decided to install apache/http package on $osdistribution ************\n\n"
	sleep 5
	if [ $distribution = "Ubuntu" ]
	then
		sudo apt install apache2 -y && sudo systemctl start apache2
		sudo systemctl status apache2
		echo "$distribution apache package up and running"
	else
		sudo yum install httpd -y && sudo systemctl start httpd
		sudo systemctl status httpd
		echo "$distribution httpd package up and running"
	fi
elif [ $op -eq 2 ]
then
	sleep 5
	echo -e "***************** You are decided to install java package on $osdistribution ************\n\n"
	sleep 5
	if [ $distribution = "Ubuntu" ]
	then
		sudo apt install openjdk-11-jre -y
		echo -e "\n********** Installaton Success ************\n"
		echo -e "Installed version is \n"`java -version`
	else
		sudo yum install java-11-openjdk -y
		echo -e "\n********** Installaton Success ************\n"
		echo -e "Installed version is \n"`java -version`
	fi
elif [ $op -eq 3 ]
then
	sleep 5
	echo -e "***************** You are decided to install ssh package on $osdistribution ************\n\n"
	sleep 5
	if [ $distribution = "Ubuntu" ]
	then
		sudo apt install openssh-client -y && sudo apt install openssh-server -y && sudo systemctl start sshd
		echo -e "\n********** Installaton Success ************\n"
		echo -e "SSH status is \n"`sudo systemctl status sshd`
			read -r -p " Do you want to enable PasswordAuthentication and PermitRootLogin? [y/N]" option
				case "$option" in
					[yY][eE][sS]|[yY])
						sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
						sudo sed -i -e '/PermitRootLogin yes/{s/PermitRootLogin yes/PermitRootLogin yes/;b};$a\PermitRootLogin yes'  /etc/ssh/sshd_config
						sudo systemctl restart sshd
						echo -e "\n\t Setting updated" ;;
					*) 
						exit
				esac
	else
		sudo yum -y install openssh-server openssh-clients && sudo systemctl start sshd
		echo -e "\n********** Installaton Success ************\n"
		echo -e "SSH status is \n"`sudo systemctl status sshd`
			read -r -p " Do you want to enable PasswordAuthentication and PermitRootLogin? [y/N]" option
				case "$option" in
					[yY][eE][sS]|[yY])
						#sudo sed -i -e '/PasswordAuthentication no/{s/PasswordAuthentication no/PasswordAuthentication yes/;b};$a\PasswordAuthentication yes'  /etc/ssh/sshd_config
						#sudo sed -i -e '/#PermitRootLogin yes/{s/#PermitRootLogin yes/PermitRootLogin yes/;b};$a\PermitRootLogin yes'  /etc/ssh/sshd_config
						sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
						sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
						sudo sed -i -e '/PermitRootLogin yes/{s/PermitRootLogin yes/PermitRootLogin yes/;b};$a\PermitRootLogin yes'  /etc/ssh/sshd_config.d/01-permitrootlogin.conf
						#sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config.d/01-permitrootlogin.conf
						sudo systemctl restart sshd
						echo -e "\n\t Setting updated" ;;
					*) 
						exit
				esac
	fi

elif [ $op -eq 4 ]
then
	sleep 5
	echo -e "***************** You are decided to install git package on $osdistribution ************\n\n"
	sleep 5
	if [ $distribution = "Ubuntu" ]
	then
		sudo apt install git -y
		echo -e "\n********** Installaton Success ************\n"
		echo -e "Installed version is \n"`git version`
		
	else
		sudo yum install git -y
		echo -e "\n********** Installaton Success ************\n"
		echo -e "Installed version is \n"`git version`
	fi

elif [ $op -eq 5 ]
then
	sleep 5
	echo -e "***************** You are decided to install jenkins package on $osdistribution ************\n\n"
	sleep 5
	if [ $distribution = "Ubuntu" ]
	then
		sudo apt install curl -y && sudo apt install openjdk-11-jre -y
		echo -e "\n\t************* Java installation completed *****************"
		echo -e "Installed java version is`java -version`"
		echo -e "\n"
		curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
		sudo apt-get update -y && sudo apt-get install jenkins -y && sudo systemctl enable jenkins
		echo -e "\n\t************* Jenkins installation completed *****************"
		echo -e "Installed jenkins will be up and runing after initial process completes \n"
		echo -e "\t\n`hostname -I`:8080 Open this IP address on browser URL and place below secret ID to start jenkins service: `sudo cat /var/lib/jenkins/secrets/initialAdminPassword`"
		
	else
		sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo && sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key && sudo yum upgrade -y
		sudo yum install java-11-openjdk -y
		echo -e "\n\t************* Java installation completed *****************"
		echo -e "Installed java version is `java -version`"
		echo -e "\n"
		sudo yum install jenkins -y && sudo systemctl enable jenkins && sudo systemctl stop firewalld
		echo -e "\n\t************* Jenkins installation completed *****************"
		echo -e "Installed jenkins will be up and runing after initial process completes \n"
		echo -e "\t\n`hostname -I`:8080 Open this IP address on browser URL and place below secret ID to start jenkins service: `sudo cat /var/lib/jenkins/secrets/initialAdminPassword`"
				
	fi

else
	exit
fi

