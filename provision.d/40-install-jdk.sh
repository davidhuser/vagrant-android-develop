#!/bin/bash
set -e

echo -e "\e[43m\n                    \n   Install JDK ...\n\e[0m"

add-apt-repository ppa:webupd8team/java -y
apt-get update
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install oracle-java8-installer
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install oracle-java8-set-default

JAVA_HOME=/usr/lib/jvm/java-8-oracle

cat > /etc/profile.d/java.sh <<EOF
export JAVA_HOME=$JAVA_HOME
export PATH=\$JAVA_HOME/bin:\$PATH
EOF
