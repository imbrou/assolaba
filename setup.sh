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

echo Setting up docker
sudo systemctl enable docker
sudo systemctl start docker

echo Enabling autostart
sudo cp laba.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable laba.service
sudo systemctl start laba.service

