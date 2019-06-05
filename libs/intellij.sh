#!/usr/bin/env bash
function __add_intellij() {
    echo "Installing intellij"
    sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    sudo flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate -y
}