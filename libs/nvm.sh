#!/usr/bin/env zsh

function __add_nvm() {

    if ! type node >> /dev/null;then
        echo "Installing Nvm"
        sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

        echo "export NVM_DIR='~/.nvm'"  >> ~/.zshrc
        echo "[ -s '$NVM_DIR/nvm.sh' ] && . '$NVM_DIR/nvm.sh'" >> ~/.zshrc # This loads nvm

        source ~/.zshrc
    else
        echo "Nvm already installed"
    fi

}
function __add_nvm_node() {
    if ! type node >> /dev/null;then
        echo "Installing Node.JS"
        nvm install 10.0.0
    else
        echo "Node already installed"
    fi
}