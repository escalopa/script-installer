##!/usr/bin

sudo apt-get update

curl "https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.5.00.23861_amd64.deb" --output teams.deb 
sudo apt install ./teams.deb
rm -rf ./teams.deb
