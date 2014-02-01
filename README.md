# Machine builders

A simple project that encapsulates [Packer](http://packer.io) templates for building [Vagrant](http://vagrantup.com) baseboxes.

## Prerequisites

You need to have [Virtualbox](https://www.virtualbox.org), [Vagrant](http://vagrantup.com) and [Packer](http://packer.io)

## Getting Started

Inside the ``packer`` directory, a JSON file describes each box that can be built. You can use ``packer build`` to build the boxes. 
Currently, only VirtualBox is available. So, you can customize the JSON files 

    $ packer build -only=virtualbox-iso debian-wheezy-x64.json
    
## Builder

Machine builders use shell scripts to get software installed and configured on a machine. Check out JSON files.
