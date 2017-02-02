#!/bin/bash
set -e

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install git xdg-utils gvfs-bin chromium-browser libc6:i386 libcurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
dpkg -i sublime-text_build-3126_amd64.deb
