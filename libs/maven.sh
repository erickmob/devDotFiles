#!/usr/bin/env bash
function __add_maven() {

    if ! type mvn >> /dev/null;then
        echo "Installing Maven"
        wget https://www-eu.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
        sudo tar xvf apache-maven-3.6.0-bin.tar.gz
        sudo mv apache-maven-3.6.0 /opt/maven

        echo "Setup Environment Variables"
        echo "export MAVEN_HOME=/opt/maven" > /etc/profile.d/maven.sh
        echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /etc/profile.d/maven.sh
        source /etc/profile.d/maven.sh
        echo "export MAVEN_HOME=/opt/maven" >> ~/.zshrc
        echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> ~/.zshrc
        source ~/.zshrc
        echo "Maven Version:"
        mvn --version
        echo "Deleting tar"
        rm -f apache-maven-3.6.0-bin.tar.gz
        echo "apache-maven-3.6.0-bin.tar.gz DELETED"
    else
        echo "maven already installed"
    fi
}

