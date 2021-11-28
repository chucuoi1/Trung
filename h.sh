#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
cd ~/ && wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=12xbcKNdP6_Lz_h5Cz5sRhYJeGY3k0die' -O H.zip && unzip H.zip