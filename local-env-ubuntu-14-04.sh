#!/bin/bash

# how to use:
# wget https://raw.githubusercontent.com/douglasdeodato/shellscript/master/local-env-ubuntu-14-04.sh
# chmod 755 local-env-ubuntu-14-04.sh

cd ~
echo "******************************************************************************"
echo "* Ubuntu 16.04 is the recommended opearting system for this install.         *"
echo "*                                                                            *"
echo "* This script will install all Dependencies required to build Litecoin.      *"
echo "******************************************************************************"
echo && echo && echo
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!                                                 !"
echo "! Make sure you double check before hitting enter !"
echo "!                                                 !"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo && echo && echo

echo "Do you want to install all needed dependencies (no if you did it before)? [y/n]"
read DOSETUP

if [[ $DOSETUP =~ "y" ]] ; then

# Make sure your system is up-to-date.
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y dist-upgrade
#Installing rbenv using a Installer
  sudo apt-get -y install -y nano htop git
  sudo apt-get install git-core curl zlib1g-dev build-essential
  sudo apt-get install libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3
  sudo apt-get install libxml2-dev libxslt1-dev libcurl4-openssl-dev
  sudo apt-get install python-software-properties libffi-dev

fi

git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

#Install Ruby through rbenv:

rbenv install 2.2.1
rbenv global 2.2.1

#Install bundler

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
rbenv rehash

#Step 2: Install MySQL
sudo apt-get install mysql-server  mysql-client  libmysqlclient-dev

echo ""
echo "done!"
