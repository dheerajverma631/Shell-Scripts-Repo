#!/bin/bash
#This script takes the package name from user and installs it.

read -p "Enter the package name " package_name
echo "checking if the is already installed"

if dpkg -s $package_name >/dev/null 2>&1;then
	echo "$package_name is already installed"
	exit 1
else
	echo "continuing installing..."

	echo "updating system and installing $package_name"
	sudo apt-get update
	sudo apt-get install $package_name

	read -p "enter the service name" service_name

	sudo systemctl start $service_name
	systemctl status $service_name

fi

