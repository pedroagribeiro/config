#/bin/bash

# Reference: https://dev.solita.fi/2021/12/21/docker-on-wsl2-without-docker-desktop.html

# Install pre-required packages
sudo apt update
sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2

# Configure package repository
source /etc/os-release
curl -fsSL https://download.docker.com/linux/${ID}/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt update

# Install Docker
sudo apt install docker-ce docker-ce-cli containerd.io

# Add current user to the Docker group
sudo usermod -aG docker $USER

# Configure dockerd
DOCKER_DIR=/mnt/wsl/shared-docker
mkdir -pm o=,ug=rwx "$DOCKER_DIR"
sudo chgrp docker "$DOCKER_DIR"
sudo mkdir -p /etc/docker
sudo cp daemon.json /etc/docker/daemon.json

