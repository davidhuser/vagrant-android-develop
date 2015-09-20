#!/bin/bash
set -e

echo -e "\e[43m\n                    \n   Install Calabash for Android ...\n\e[0m"

su -lc /bin/bash vagrant <<EOF
  set -e
  if [[ ! -d \$HOME/.rvm ]]; then
    curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    curl -sSL https://get.rvm.io | bash -s stable
  fi
  source \$HOME/.rvm/scripts/rvm
  rvm list | fgrep ruby || LC_ALL=C DEBIAN_FRONTEND=noninteractive rvm --quiet-curl install ruby
  rvm use ruby@Calabash-Android --create --default
  gem install calabash-android --version 0.5.5
EOF
