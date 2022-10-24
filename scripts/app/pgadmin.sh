#!/usr/bin

sudo echo "running install script"

sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add

DEVICE_NAME = $(lsb_release -cs)

if DEVICE_NAME == 'kali-rolling';
  DEVICE_NAME = bullseye
fi

sudo echo “deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$DEVICE_NAME/ pgadmin4 main” > /etc/apt/sources.list.d/pgadmin4.list

sudo apt update -y

sudo apt install pgadmin4 -y
