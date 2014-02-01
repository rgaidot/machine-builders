#!/bin/bash -eux

export DEBIAN_FRONTEND=noninteractive
apt-get install -y mysql-server mysql-client libmysqlclient-dev
