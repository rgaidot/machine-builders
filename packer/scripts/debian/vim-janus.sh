#!/bin/bash -eux

su vagrant -c 'source $HOME/.rvm/scripts/rvm && gem install rake'
su vagrant -c 'source $HOME/.rvm/scripts/rvm && curl -Lo- https://bit.ly/janus-bootstrap | bash'
