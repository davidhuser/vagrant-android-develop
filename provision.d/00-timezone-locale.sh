#!/bin/bash
set -e

TIMEZONE=Atlantic/Reykjavik
LOCALE=en_US.utf8

echo -e "\e[43m\n                    \n   Set timezone: $TIMEZONE locale: $LOCALE ...\n\e[0m"

timedatectl set-timezone $TIMEZONE
locale --all-locales | fgrep $LOCALE > /dev/null || locale-gen $LOCALE
