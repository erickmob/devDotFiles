#!/usr/bin/env bash
function __add_maven() {

    if ! type mvn >> /dev/null;then
        echo "Installing Maven"
        sudo dnf install maven -y
    else
        echo "maven already installed"
    fi
}

