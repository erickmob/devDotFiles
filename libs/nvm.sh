#!/usr/bin/env bash

function __add_nvm() {
    echo Installing Nvm
    sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
}
function __add_nvm_node() {
    echo Installing Node.JS
    source ~/.bashrc
    nvm install 10.0.0
}