#!/usr/bin/env bash

function __add_nvm() {

    if ! type nvm >> /dev/null;then
        echo "Installing Nvm"
        sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

        echo "export NVM_DIR='~/.nvm'"  >> ~/.bashrc
        echo "[ -s '$NVM_DIR/nvm.sh' ] && . '$NVM_DIR/nvm.sh'" >> ~/.bashrc # This loads nvm

    else
        echo "Nvm already installed"
    fi

}
function __add_npm_node() {
    if ! type node >> /dev/null;then
        echo "Installing Node.JS"
        sudo dnf install -y nodejs npm
    else
        echo "Node already installed"
    fi
}