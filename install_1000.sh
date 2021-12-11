#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
cd /mnt/disks/NVME
wget https://github.com/chucuoi1/Trung/raw/main/data1000.zip -O data1000.zip
unzip data1000.zip
curl https://rclone.org/install.sh | sudo bash
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd /mnt/disks/NVME/chia-blockchain
sh install.sh
cd /mnt/disks/NVME/chia-blockchain/ && . ./activate &&  chia init -c ~/ca &&  chia start harvester
