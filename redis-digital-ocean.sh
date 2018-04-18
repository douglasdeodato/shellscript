#!/bin/bash

# how to use:
# wget https://raw.githubusercontent.com/douglasdeodato/shellscript/master/redis-digital-ocean.sh
# chmod 755 redis-digital-ocean.sh

# from: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04

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
sudo apt-get install build-essential tcl

fi

echo "*****************************************"
echo " Download, Compile, and Install Redis Next, we can begin to build Redis."
echo "*****************************************"

# Download and Extract the Source Code
# Since we won't need to keep the source code that we'll compile long term (we can always re-download it),
# we will build in the /tmp directory. Let's move there now:

cd /tmp

echo "Now, download the latest stable version of Redis. This is always available at a stable download URL:"

curl -O http://download.redis.io/redis-stable.tar.gz

#Unpack the tarball by typing:

tar xzvf redis-stable.tar.gz
# Move into the Redis source directory structure that was just extracted:

cd redis-stable



echo ""
echo "done!"
