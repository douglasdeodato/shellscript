#/bin/bash

# how to use:
# wget https://raw.githubusercontent.com/douglasdeodato/shellscript/master/mining-pool.sh
# chmod 755 mining-pool.sh

cd ~
echo "******************************************************************************"
echo "* Ubuntu 16.04 is the recommended opearting system for this install.         *"
echo "*                                                                            *"
echo "* This script will install all Dependencies required to build a mining pool.      *"
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

  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y dist-upgrade
  sudo apt-get install git screen watch
  sudo apt-get install build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev libdb5.1++-dev mysql-server
  sudo apt-get install python-twisted python-mysqldb python-dev python-setuptools python-memcache python-simplejson python-pylibmc
  sudo easy_install -U distribute
  sudo apt-get install memcached php5-memcached php5-mysqlnd php5-curl php5-json libapache2-mod-php5
  sudo apache2ctl -k stop; sleep 2; sudo apache2ctl -k start

fi


echo ""
echo "done!"
