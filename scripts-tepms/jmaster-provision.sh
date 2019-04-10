#!/usr/bin/env bash

installJenkins() {
        sudo add-apt-repository ppa:webupd8team/java
        sudo apt install oracle-java8-installer
	wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
	sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
	apt-get update -y && apt-get install jenkins=2.164.2 -y # 2.73.3 -y
	sudo systemctl start jenkins
}

installJenkins

apt-get install -y maven
