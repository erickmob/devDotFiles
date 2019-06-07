#!/usr/bin/env bash
function __add_spotify() {

    INSTALL_DIRECTORY="$(flatpak --installations)/app/com.spotify.Client"

    if [ -d "$INSTALL_DIRECTORY" ] 
    then
        echo "spotify already installed"
    else
        echo "Installing spotify"
        sudo flatpak install flathub com.spotify.Client -y
    fi
}