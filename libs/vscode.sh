#!/usr/bin/env bash
function __add_vscode() {
    echo "Installing vscode"
    sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    sudo flatpak install flathub com.visualstudio.code -y
}