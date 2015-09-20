#!/bin/bash
set -e

# http://stackoverflow.com/questions/18878117/using-vagrant-to-run-virtual-machines-with-desktop-environment

echo -e "\e[43m\n                    \n   Install XFCE4 GUI ...\n\e[0m"

# fix 
# "a) Install miscfiles before the 900+ other DebianParl packages."
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=751367
# Errors were encountered while processing:
#  dictionaries-common
#  miscfiles
# Sub-process /usr/bin/dpkg returned an error code (1)

apt-get install -y apt-utils
apt-get install -y dictionaries-common
apt-get install -y miscfiles
apt-get install -y xfce4

[[ -f /etc/X11/Xwrapper.config.orig ]] || sed -e s,allowed_users=console,allowed_users=anybody, -i.orig /etc/X11/Xwrapper.config
