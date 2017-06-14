#!/bin/bash -ex

if [ ! -e /etc/issue ]
then
    echo 'Unknown distro: no /etc/issue. Giving up.'
    exit 1
fi

if grep -qi 'Arch Linux' /etc/issue
then
    #install ansible
    pacman --noconfirm -S ansible

    exit 0
fi

if grep -qi 'Ubuntu' /etc/issue
then
    #install dependencies
    apt-get update
    apt-get install python-dev libffi-dev python-pip -y

    #install ansible
    pip install --upgrade markupsafe setuptools ansible==2.0.2.0

    exit 0
fi

echo "Unsupported distro: '$(</etc/issue)' Giving up."
    exit 1


