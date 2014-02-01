#!/bin/bash -eux

apt-get -y install openjdk-7-jre-headless

wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb
dpkg -i elasticsearch-0.90.10.deb

cd /usr/share/elasticsearch/ && bin/plugin -i elasticsearch/marvel/latest
