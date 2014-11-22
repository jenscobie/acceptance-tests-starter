#!/bin/bash

echo "Provisioning virtual machine..."

sudo apt-get -y update

echo "Installing curl"
sudo apt-get -y install curl

echo "Installing git"
sudo apt-get -y install git-core

echo "Installing firefox"
sudo apt-get -y install firefox

echo "Installing rbenv"
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
rbenv bootstrap-ubuntu-12-04

echo "Installing ruby 2.1.2"
rbenv install 2.1.2