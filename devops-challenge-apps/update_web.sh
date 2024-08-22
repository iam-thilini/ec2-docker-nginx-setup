#!/bin/bash

# Navigate to the directory containing your application
cd web || { echo "Failed to change directory to /web"; exit 1; }

# Pull the latest changes from the Git repository
git pull origin master

# Stop and remove running containers
sudo docker-compose down

# Start containers in detached mode
sudo docker-compose up -d

echo "Web app updated and running!"
