#! /usr/bash/bin

# Install Nvidia Container Toolkit

curl -s -L https://nvidia.github.io/libnvidia-container/stable/rpm/nvidia-container-toolkit.repo |   sudo tee /etc/yum.repos.d/nvidia-container-toolkit.repo
sudo yum install -y nvidia-container-toolkit

# Install docker compose

sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.29.2/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

# Loging and Enter your Nvidia Personal Key!!
docker login nvcr.io -u '$oauthtoken'

# Start docker compose
docker compose up
