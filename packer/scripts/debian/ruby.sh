#!/bin/bash -eux

su vagrant -c 'curl -sSL https://get.rvm.io | bash -s stable --ruby'
apt-get install -y libmagickwand-dev
