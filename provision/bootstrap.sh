#!/usr/bin/env bash

# Functions
DATE() {
  date '+%Y-%m-%d %H:%M:%S'
}

# Variables
IP=`ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo [$(DATE)] [Info] [System] ${addr%/*}; done`
VM_USER=vagrant
DOCKER_VERSION=20.10.23
DOCKER_COMPOSE_VERSION=2.15.0
CONTAINERD_VERSION=1.6.16-1

# Non-Interactive Installation
export DEBIAN_FRONTEND=noninteractive

# Install packages to allow apt to use a repository over HTTPS
echo "[$(DATE)] [Info] [System] Installing tools..."
apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    bash-completion &> /dev/null

echo "[$(DATE)] [Info] [Docker] Installing Docker..."

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &> /dev/null
apt-key fingerprint 0EBFCD88 &> /dev/null

# Set up the stable repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" &> /dev/null

# Install Docker
apt -y update &> /dev/null
apt -y install docker-ce=5:$DOCKER_VERSION~3-0~ubuntu-focal docker-ce-cli=5:$DOCKER_VERSION~3-0~ubuntu-focal containerd.io=$CONTAINERD_VERSION &> /dev/null

# To run Docker without sudo
usermod -aG docker $VM_USER &> /dev/null

# Enable service
systemctl enable docker &> /dev/null

echo "[$(DATE)] [Info] [Docker Compose] Installing Docker Compose..."

# Install Docker Compose
apt -y install docker-compose-plugin=$DOCKER_COMPOSE_VERSION~ubuntu-focal &> /dev/null

# Clean unneeded packages
echo "[$(DATE)] [Info] [System] Cleaning unneeded packages..."
apt -y autoremove &> /dev/null

# Update file search cache
echo "[$(DATE)] [Info] [System] Updating file search cache..."
updatedb &> /dev/null

# Show IPs
echo "[$(DATE)] [Info] [System] IP Address on the machine..."
echo -e "$IP"

echo "[$(DATE)] [Info] [System] Enjoy it! :)"
