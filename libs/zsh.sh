#!/usr/bin/env bash

function __add_zsh() {
    if ! type zsh >> /dev/null;then
        echo "Installing Zsh"
        sudo dnf install zsh util-linux-user -y
        sudo chsh -s $(which zsh)
        sudo touch ~/".zshrc"
        sudo chmod a+w ~/.zshrc

        echo "export NVM_DIR='~/.nvm'"  >> ~/.zshrc
        echo "[ -s '$NVM_DIR/nvm.sh' ] && . '$NVM_DIR/nvm.sh'" >> ~/.zshrc # This loa

        echo "export JAVA_HOME=/opt/jdk-12.0.1" >> ~/.zshrc
        echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.zshrc

    else
        echo "ZSH already installed"
    fi
}