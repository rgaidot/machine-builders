#!/bin/bash -eux

su vagrant -c 'curl -L http://install.ohmyz.sh | sh'
sudo chsh vagrant -s $(which zsh)
