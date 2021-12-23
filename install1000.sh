#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
wget https://github.com/chucuoi1/Trung/raw/main/data1000.zip -O data1000.zip
unzip data1000.zip
curl https://rclone.org/install.sh | sudo bash
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd ~/chia-blockchain
sh install.sh
cd ~/chia-blockchain/ && . ./activate &&  chia init -c ~/ca &&  chia start harvester