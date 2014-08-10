#!/bin/bash -eux

apt-get -y install openjdk-7-jre-headless

wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -

echo "deb http://packages.elasticsearch.org/elasticsearch/1.2/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch.list

apt-get update && apt-get install elasticsearch

update-rc.d elasticsearch defaults
