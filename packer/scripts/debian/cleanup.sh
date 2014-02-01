#!/bin/bash -eux

apt-get -y remove linux-headers-$(uname -r)
apt-get -y autoremove
apt-get -y clean

rm /var/lib/dhcp/*

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
