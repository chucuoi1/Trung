#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
cd ~/ && wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kPv6_1GfNE0_G98Q-rFBp-dRgWWvwwCn' -O C.zip && unzip C.zip