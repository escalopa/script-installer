#!/usr/bin

sudo echo "running install script"

sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now

sudo usermod -aG docker $USER
printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" |
  sudo tee /etc/apt/sources.list.d/docker-ce.list

curl -fsSL https://download.docker.com/linux/debian/gpg |
  sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg

sudo apt update
