#!/bin/bash

#This script takes the package from the user and installs it.

read -p "Enter the package name" package_name

echo "Checking if package is already installed...."


if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed"
	exit 1
else
	echo "continuing installation..."

echo "Upadating system and installing $package_name"

sudo apt-get update

sudo apt install $package_name -y

read -p "Enter the service name" service_name

sudo systemctl start $service_name
systemctl status $service_name	

fi
