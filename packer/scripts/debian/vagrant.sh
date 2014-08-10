#!/bin/bash -eux

echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

apt-get -y update
apt-get -y install nfs-common
