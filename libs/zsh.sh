#!/usr/bin/env bash

function __add_zsh() {
    if ! type zsh >> /dev/null;then
        echo "Installing Zsh"
        sudo dnf install zsh util-linux-user -y
        chsh -s $(which zsh)
        sudo touch ~/".zshrc"
    else
        echo "ZSH already installed"
    fi
}