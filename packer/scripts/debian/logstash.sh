#!/bin/bash -eux

apt-get -y install openjdk-7-jre-headless

wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -

echo "deb http://packages.elasticsearch.org/logstash/1.3/debian stable main" | sudo tee -a /etc/apt/sources.list.d/logstash.list

apt-get update && apt-get -y install logstash

update-rc.d logstash defaults
