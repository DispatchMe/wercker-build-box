#!bin/bash
sudo apt-get update -y
sudo apt-get install -y wget build-essential

# node.js
export NODEVERSION=0.10.29
cd $HOME
mkdir nodeinstall
cd nodeinstall
wget http://nodejs.org/dist/v$NODEVERSION/node-v$NODEVERSION.tar.gz
tar xzf node-v$NODEVERSION.tar.gz
cd node-v$NODEVERSION
./configure
make
sudo make install
cd $HOME
rm -fr nodeinstall
node -v

# dependencies
sudo npm install -g compass grunt-cli bower
