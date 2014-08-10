# Machine builders

A simple project that encapsulates [Packer](http://packer.io) templates for building [Vagrant](http://vagrantup.com) baseboxes.

## Prerequisites

You need: 

 - [Vagrant](http://vagrantup.com)
 - [Packer](http://packer.io)
 - [Virtualbox](https://www.virtualbox.org)


## Getting Started

Inside the ``packer`` directory, a JSON file describes each box that can be built. You can use ``packer build`` to build the boxes. So, you can customize the JSON files 

```bash
$ git clone git@github.com:rgaidot/machine-builders.git
$ cd machine-builders ; cd packer
$ packer build -only=virtualbox-iso debian-wheezy-amd64.json
```
 
## Builder

Machine builders use shell scripts to get software installed and configured on a machine. Check out JSON files.
