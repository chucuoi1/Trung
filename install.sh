#!/bin/bash

wget https://github.com/chucuoi1/Trung/raw/main/data.zip -O data.zip
unzip data.zip
curl https://rclone.org/install.sh | sudo bash
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
cd ~/chia-blockchain/ && . ./activate &&  chia init -c ~/ca &&  chia start harvester
