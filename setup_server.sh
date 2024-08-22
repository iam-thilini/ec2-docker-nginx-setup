#!/bin/bash

# Update package lists and upgrade packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Nginx
sudo apt-get install nginx -y

# Install Docker
sudo apt-get install docker.io -y

# Download and install the latest version of Docker Compose
DOCKER_COMPOSE_VERSION="1.29.2" # Replace with the latest version if needed
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Start and enable Nginx service and Docker service
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl start docker
sudo systemctl enable docker

# Verify the installation
echo "Nginx version:"
nginx -v

echo "Docker version:"
docker --version

echo "Docker Compose version:"
docker-compose --version
