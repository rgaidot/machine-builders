#!/bin/bash -eux

su vagrant -c 'curl https://raw.github.com/creationix/nvm/master/install.sh | sh'
su vagrant -c 'source ~/.nvm/nvm.sh && nvm install 0.10'
