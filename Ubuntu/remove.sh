#!/bin/bash

service mysql stop
killall -KILL mysql mysqld_safe mysqld

apt-get remove --yes --purge mysql*
apt-get remove --yes dbconfig-mysql
apt-get --yes autoremove --purge
apt-get --yes autoclean
sudo apt-get --yes dist-upgrade


deluser --remove-home mysql
delgroup mysql
rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld