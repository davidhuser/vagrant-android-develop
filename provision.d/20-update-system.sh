#!/bin/bash
set -e

SOURCES_CDN=hu

echo -e "\e[43m\n                    \n   Update system ...\n\e[0m"

[[ -f /etc/apt/sources.list.orig ]] || sed -e s,http://archive\.,http://$SOURCES_CDN.archive\., -i.orig /etc/apt/sources.list

apt-get update --fix-missing
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y upgrade
