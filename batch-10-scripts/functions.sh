#!/bin/bash

<<usage

./functio.sh hello
inside function call
install_Package docker.io
usage

echo "$1 is the main argument passed to script"

haldi() {
	echo "haldi lagao"
	echo "oani mein daaalo"
}

#function define

install_package(){
	echo "$1 is the local argument passed to the function"
	sudo apt-get install $1
}

install_package  #function calling

