#!/usr/bin/env bash

# Functions
DATE() {
  date '+%Y-%m-%d %H:%M:%S'
}

# Variables
IP=`ip -o addr show up primary scope global | while read -r num dev fam addr rest; do echo [$(DATE)] [Info] [System] ${addr%/*}; done`

# Non-Interactive Installation
export DEBIAN_FRONTEND=noninteractive

# Update & Upgrade System
echo "[$(DATE)] [Info] [System] Updating & Upgrading System..."
apt -y update &> /dev/null
apt -y upgrade &> /dev/null

# Install packages to allow apt to use a repository over HTTPS
echo "[$(DATE)] [Info] [System] Installing tools..."
apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    bash-completion &> /dev/null

echo "[$(DATE)] [Info] [System] Installing Docker..."

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
apt -y install docker-ce docker-ce-cli containerd.io &> /dev/null

# To run Docker without sudo
usermod -aG docker vagrant &> /dev/null

# Enable service
systemctl enable docker &> /dev/null

echo "[$(DATE)] [Info] [System] Installing Docker Compose..."

# Install Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &> /dev/null
chmod +x /usr/local/bin/docker-compose &> /dev/null
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &> /dev/null

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
