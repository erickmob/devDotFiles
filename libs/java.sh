#!/usr/bin/env bash

function __add_java() {

    if ! type java >> /dev/null;then
        echo "Installing java"
        curl -O https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz
        tar xvf openjdk-12.0.1_linux-x64_bin.tar.gz
        sudo mv jdk-12.0.1 /opt/
        echo "export JAVA_HOME=/opt/jdk-12.0.1" >> ~/.zshrc
        echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.zshrc
    else
        echo "java already installed"
    fi


}
