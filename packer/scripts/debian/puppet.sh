#!/bin/bash -eux

wget http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
dpkg -i puppetlabs-release-wheezy.deb
apt-get update

apt-get install -y puppet facter
