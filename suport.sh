# Work in progress

# This guide is used to build a Monero node using Ubuntu 16.4
# Note that all these codes are for mining Monero [XMR]

#!/bin/bash

# Update apt as sudo
sudo apt update
#sudo apt upgrade

# Install C compiler as sudo
sudo apt-get install build-essential

# Install curl
sudo apt-get install curl

# Install git, make, automake, screen, libcurl4-openssl-dev
sudo apt-get install git make automake screen libcurl4-openssl-dev

# Download Wolf's cpu-miner from Github
cd /opt

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

# Build cpuminer-multi
./autogen.sh

CFLAGS="-march=native" ./configure --disable-aes-ni 

make

screen -S miner ./minerd -a cryptonight -o stratum+tcp://xmr-usa.dwarfpool.com:8050 -u 463tWEBn5XZJSxLU6uLQnQ2iY9xuNcDbjLSjkn3XAXHCbLrTTErJrBWYgHJQyrCwkNgYvyV3z8zctJLPCZy24jvb3NiTcTJ.23444e05faa24a5cb20c78ad0d6adbdf239bc5b625054d2197d56fd349673b16 -p x -t 8
