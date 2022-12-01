#!/usr/bin

sudo apt-get update

curl "https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64" --output docker-desktop.deb 
sudo apt install ./docker-desktop.deb -y
rm -rf ./docker-desktop.deb
