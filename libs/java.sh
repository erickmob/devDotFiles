#!/usr/bin/env bash

function __add_java() {
    echo Installing java
    wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie"   "https://download.oracle.com/otn-pub/java/jdk/12.0.1+12/69cfe15208a647278a19ef0990eea691/jdk-12.0.1_linux-x64_bin.rpm"
    rpm -Uvh jdk-12.0.1_linux-x64_bin.rpm
    echo "export JAVA_HOME=/usr/java/jdk-12.0.1" >> ~/.zshrc
    echo "export PATH=$PATH:/usr/java/jdk-12.0.1/bin" >> ~/.zshrc
}
