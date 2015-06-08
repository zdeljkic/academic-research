#!/bin/bash

mysql -u root -p netglub < netglub_remove.sql
mysql -u root -p netglub < netglub_add.sql
