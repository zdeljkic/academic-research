#!/bin/bash

service netglub-slave stop
service netglub-master stop
service mysql stop
service mysql start
service netglub-master start
service netglub-slave start
