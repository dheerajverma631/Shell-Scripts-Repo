#!/bin/bash

if [ $# -eq 0 ]
then
	echo "please pass a file as an argument"
	echo "usage: ./if_file-exists.sh <file.path>"
	exit 1
fi




if [ -f $1 ]
then
	echo "file exists"
else
	echo "file doesn't exists"
fi

