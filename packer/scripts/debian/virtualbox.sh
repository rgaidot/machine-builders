#!/bin/bash -eux

[ "$PACKER_BUILDER_TYPE" == "virtualbox-iso" ] || {
    exit;
}

VBOX_VERSION=$(cat .vbox_version)
VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm $VBOX_ISO
