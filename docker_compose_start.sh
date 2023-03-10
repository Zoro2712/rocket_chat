#!/bin/bash

# Install Docker
sudo apt install -y docker docker-compose git
sudo service docker start
sleep 10

# Install docker-compose
sudo sh -c 'curl -L https://github.com/docker/compose/releases/download/1.6.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
sudo chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/RocketChat/Rocket.Chat/develop/docker-compose.yml -o docker-compose.yml
sudo docker-compose up -d
