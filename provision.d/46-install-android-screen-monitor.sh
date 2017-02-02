#!/bin/bash
set -e

ANDROID_SCREEN_MONITOR_FILENAME=ASM_2_50.zip

echo -e "\e[43m\n                    \n   Install Android Screen Monitor ($ANDROID_SCREEN_MONITOR_FILENAME) ...\n\e[0m"

ANDROID_SCREEN_MONITOR_URL=https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/android-screen-monitor/$ANDROID_SCREEN_MONITOR_FILENAME
ANDROID_SCREEN_MONITOR_LOCAL_CACHE=/vagrant/cache/$ANDROID_SCREEN_MONITOR_FILENAME

[[ -e $ANDROID_SDK_LOCAL_CACHE ]] || \
wget --quiet -O $ANDROID_SCREEN_MONITOR_LOCAL_CACHE $ANDROID_SCREEN_MONITOR_URL

unzip -o $ANDROID_SCREEN_MONITOR_LOCAL_CACHE -d $ANDROID_HOME
