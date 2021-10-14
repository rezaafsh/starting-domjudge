#!/bin/bash

DOMJUDGE_VERSION=7.1.0
MYSQL_PASSWORD=mysql_password
MYSQL_ROOT_PASSWORD=mysql_root_password

sudo docker run -it -d --name dj-mariadb -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -e MYSQL_USER=domjudge -e MYSQL_PASSWORD=$MYSQL_PASSWORD -e MYSQL_DATABASE=domjudge -p 13306:3306 mariadb --max-connections=1000