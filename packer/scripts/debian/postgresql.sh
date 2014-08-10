#!/bin/bash -eux

export DEBIAN_FRONTEND=noninteractive
apt-get install -y postgresql postgresql-client libpq-dev
