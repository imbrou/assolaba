#!/bin/bash - 
#===============================================================================
#
#         USAGE: ./setup.sh 
# 
#   DESCRIPTION: Setup script for a new docker-based debian server instance.
#        AUTHOR: Brou (brousse@lilo.org)
#       CREATED: 02/25/20 17:53:20 CET
#
#===============================================================================

echo Installing docker
sudo apt update
sudo apt install -y docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo Setting up docker
sudo systemctl enable docker
sudo systemctl start docker

echo Enabling autostart
sudo cp laba.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable laba.service
sudo systemctl start laba.service

