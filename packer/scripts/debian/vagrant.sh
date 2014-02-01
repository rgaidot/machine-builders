#!/bin/bash -eux

chsh -s /bin/zsh vagrant

echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

if test -f .vbox_version ; then
  VBOX_VERSION=$(cat .vbox_version)
  VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
  mount -o loop $VBOX_ISO /mnt
  yes|sh /mnt/VBoxLinuxAdditions.run
  umount /mnt
  rm VBoxGuestAdditions_*.iso
fi
