#!/bin/bash



if [ "$(uname)" == "Darwin" ]; then

	if [ ! -f /usr/bin/git ]; then
		echo " * Getting Xcode command line tools"
		xcode-select --install
	fi


	if [ ! -f /usr/local/bin/brew ]; then
		echo " * Installing Homebrew"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi


	echo " * Installing Ansible"
	brew install ansible

elif [ "$(uname)" == "Linux" ]; then

	if [ "$(lsb_release -cs)" == "trusty" ]; then
		echo " * Installing Ansible"
		sudo add-apt-repository ppa:ansible/ansible
		sudo apt-get update
		sudo apt-get -y install ansible
	fi


fi


