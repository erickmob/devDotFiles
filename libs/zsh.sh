#!/usr/bin/env bash

function __add_zsh() {
    echo Installing Zsh
    sudo -i dnf install zsh
    sudo -i dnf install chsh
    chsh -s $(which zsh)
}