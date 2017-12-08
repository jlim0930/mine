#!/bin/sh

# install packages
rpm -q epel-release || yum install epel-release -y
rpm -q git || yum install git -y
rpm -q ansible || yum install ansible -y
rpm -q libselinux-python || yum install libselinux-python -y

# configure
cd /tmp
git clone http://github.com/jlim0930/mine.git
cd mine
ansible-playbook -i "localhost," -c local local.yml

