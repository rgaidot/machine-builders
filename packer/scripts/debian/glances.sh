#!/bin/bash -eux

apt-get -y install python-psutil python-dev

wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm get-pip.py
pip install Glances
