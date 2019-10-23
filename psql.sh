#!/bin/sh
apt update
apt upgrade -y
apt install sudo -y
apt install postgresql -y
su - postgresql
psql -c 'CREATE DATABASE test;'
psql -d test -c 'CREATE TABLE counter (count, int);'
psql -d test -c 'UPDATE counter SET count=0;'
