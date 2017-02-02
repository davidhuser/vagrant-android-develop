#!/bin/bash
set -e

echo -e "\e[43m\n                    \n   Install JDK ...\n\e[0m"

apt-get install -y openjdk-7-jre

case $(uname -i) in
    i386|i686)
        JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386
        ;;
    *)
        JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
        ;;
esac

cat > /etc/profile.d/java.sh <<EOF
export JAVA_HOME=$JAVA_HOME
export PATH=\$JAVA_HOME/bin:\$PATH
EOF
