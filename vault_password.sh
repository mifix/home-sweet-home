#!/bin/bash


# Initial store:

# $ secret-tool store --label=Ansible ansible-vault password


if [ "$(uname)" == "Darwin" ]; then
	security find-generic-password -a ansible-vault -w
elif [ "$(uname)" == "Linux" ]; then
	secret-tool lookup ansible-vault password
fi
