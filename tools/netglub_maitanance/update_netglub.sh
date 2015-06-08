#!/bin/bash

if [ ! $# -eq 1 ]
then
	echo "Usage: $0 input_directory"
	exit 1
fi

cp -r $1/entities /usr/local/share/netglub/master/ 
cp -r $1/transforms /usr/local/share/netglub/master/
cp -r $1/transforms /usr/local/share/netglub/slave/

./update_mysql.sh
./restart_ng.sh --remove-log
