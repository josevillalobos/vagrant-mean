#!/usr/bin/env bash
#
# Install MongoDB
#
# See <http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/>.

export DEBIAN_FRONTEND=noninteractive

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | \
  tee /etc/apt/sources.list.d/mongodb.list && \
  apt-get update && \
  apt-get install -y mongodb-org
