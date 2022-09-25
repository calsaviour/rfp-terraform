#!/bin/bash
sudo apt-get update -y &&
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo apt-get update -y &&
sudo apt-get upgrade &&
sudo add-apt-repository ppa:deadsnakes/ppa -y &&
sudo sudo apt-get install npm python3.10 python3-pip docker-ce docker-ce-cli containerd.io docker-compose-plugin -y  &&
sudo usermod -aG docker ubuntu
mkdir /home/ubuntu/algorand
cd /home/ubuntu/algorand

git clone https://github.com/algorand/reach-auction.git
git clone https://github.com/algorand/auction-demo.git
git clone https://github.com/algorand/sandbox.git
git clone https://github.com/algorand-devrel/beaker-auction.git

curl https://docs.reach.sh/reach -o reach ; chmod +x reach
mv reach /usr/local/bin

chown ubuntu:ubuntu /usr/local/bin/reach

# initialize project
## npm init
# install Algorand sdk
## npm install algosdk
# list the version
## npm list algosdk

pip3 install pyteal
sudo chmod -R ubuntu:ubuntu /home/ubuntu/algorand