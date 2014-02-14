#!/bin/bash -eux

apt-get -y install openjdk-7-jre-headless

wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.deb
dpkg -i elasticsearch-1.0.0.deb
rm elasticsearch-1.0.0.deb

cd /usr/share/elasticsearch/ && bin/plugin -i elasticsearch/marvel/latest

update-rc.d elasticsearch defaults
