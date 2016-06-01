#!/bin/bash


if [ ! -f /usr/bin/git ]; then
	echo " * Getting Xcode command line tools"
	xcode-select --install
fi


if [ ! -f /usr/local/bin/brew ]; then
	echo " * Installing Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


brew install ansible
