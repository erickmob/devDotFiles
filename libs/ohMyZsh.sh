#!/usr/bin/env zsh

function __add_ohmyzsh() {
    echo Installing OhMyZsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}