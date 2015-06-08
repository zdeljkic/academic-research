#!/bin/bash

service netglub-slave stop
service netglub-master stop
service mysql stop

if [ $# -eq 1 ]
then
	if [ $1 = --remove-log ]
	then
		echo "Removing Netglub logs..."
		rm /var/log/netglub_*
	fi
fi

service mysql start
service netglub-master start
service netglub-slave start
