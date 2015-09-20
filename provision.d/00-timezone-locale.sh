#!/bin/bash
set -e

TIMEZONE=Europe/Budapest
LOCALE=hu_HU.utf8

timedatectl set-timezone $TIMEZONE
locale --all-locales | fgrep $LOCALE > /dev/null || locale-gen $LOCALE
