#!/bin/bash

# how to use:
# wget https://raw.githubusercontent.com/douglasdeodato/shellscript/master/litecoin-08-dependencies.sh
# chmod 755 litecoin-08-dependencies.sh

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

  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y dist-upgrade
  sudo apt-get -y install -y nano htop git
  sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
  sudo apt-get -y install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
  sudo apt-get -y install libboost-all-dev
  sudo apt-get -y install software-properties-common
  sudo add-apt-repository -y ppa:bitcoin/bitcoin
  sudo apt-get update
  sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
  sudo apt-get install -y libminiupnpc-dev
  sudo apt-get install -y libzmq3-dev
  sudo apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
  sudo apt-get install -y libqt4-dev libprotobuf-dev protobuf-compiler

fi

 git clone https://github.com/litecoin-project/litecoin ~/Desktop/litecoin
 cd ~/Desktop/litecoin
 git tag -l
 git checkout 0.8

 echo ""
 echo "done!"
