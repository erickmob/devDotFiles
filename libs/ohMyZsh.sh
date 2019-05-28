#!/usr/bin/env zsh

function __add_ohmyzsh() {

    if [[ -f ~/.oh-my-zsh ]]; then
        echo "Installing OhMyZsh"
        sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    else
        echo "OhMyZsh already installed"
    fi

}