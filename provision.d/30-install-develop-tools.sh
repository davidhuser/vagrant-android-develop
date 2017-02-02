#!/bin/bash
set -e

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install git xdg-utils gvfs-bin
wget https://github.com/atom/atom/releases/download/v1.13.1/atom-amd64.deb
dpkg -i atom-amd64.deb
