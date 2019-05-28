#!/usr/bin/env bash
function __add_maven() {

    if ! type mvn -v >> /dev/null;then
        echo "Installing Maven"
        cd /opt
        wget https://www-eu.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
        sudo tar xzf aapache-maven-3.6.0-bin.tar.gz
        sudo ln -s apache-maven-3.6.0 maven
        echo "Setup Environment Variables"
        echo "export M2_HOME=/opt/maven" > /etc/profile.d/maven.sh
        echo "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/maven.sh
        source /etc/profile.d/maven.sh
        echo "Maven Version:"
        mvn -version
        echo "Deleting tar"
        rm -f apache-maven-3.6.0-bin.tar.gz
        echo "apache-maven-3.6.0-bin.tar.gz DELETED"
    else
        echo "maven already installed"
    fi
}

