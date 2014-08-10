#!/bin/bash -eux

su vagrant -c 'git clone https://github.com/creationix/nvm.git ~/.nvm'
su vagrant -c 'source ~/.nvm/nvm.sh && nvm install 0.10'
