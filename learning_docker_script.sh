%%writefile learning_docker_script.sh

#!/bin/bash
# Lab Session: Introduction to Docker on Ubuntu
# Author: Prof. Mehdi Pirahandeh, ISE Department
# This script is a beginner's guide to install, run, and work with
Docker on Ubuntu.
# Step 1: Update the system
# This command updates the list of packages and their versions on your
system.
sudo apt-get update
# Step 2: Install prerequisite packages
# These packages are necessary for Docker to run on Ubuntu.
sudo apt-get install apt-transport-https ca-certificates curl
software-properties-common
# Step 3: Add Docker’s official GPG key
# This key is required to ensure the integrity and authenticity of
Docker packages.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key
add -
# Step 4: Add Docker repository to APT sources
# This adds Docker's repository to the list of sources for software
packages.
sudo add-apt-repository "deb [arch=amd64]
https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Step 5: Update the package database with Docker packages from the
newly added repo
sudo apt-get update
# Step 6: Install Docker
# This command installs Docker onto your system.
sudo apt-get install docker-ce
# Step 7: Verify Docker installation
# This checks if Docker is installed correctly and is running.
sudo docker --version
echo "Docker has been installed successfully!"
# Step 8: Run a test Docker container
# Here we run a simple hello-world container to verify Docker is
working correctly.
echo "Running a test Docker container..."
sudo docker run hello-world
# Step 9: Basic Docker Commands
# Below are some basic Docker commands for managing Docker containers
and images.
# List all running containers
echo "To list all running Docker containers, use: sudo docker ps"
# List all containers, including those not running
echo "To list all containers, use: sudo docker ps -a"
# List all Docker images on this system
echo "To list all Docker images, use: sudo docker images"
# Step 10: Conclusion
# This marks the end of this basic Docker lab session.
echo "This concludes the basic Docker lab session. Explore more to
learn Docker's full capabilities!"
