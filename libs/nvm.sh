#!/usr/bin/env bash

function __add_nvm() {

    if ! type node >> /dev/null;then
        echo "Installing Nvm"
        sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
    else
        echo "Nvm already installed"
    fi

}
function __add_nvm_node() {
    if ! type node >> /dev/null;then
        echo "Installing Node.JS"
        source ~/.zshrc
        nvm install 10.0.0
    else
        echo "Node already installed"
    fi
}