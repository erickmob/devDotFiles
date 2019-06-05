#!/usr/bin/env bash
function __add_postman() {
    echo Installing postman
    sudo flatpak install flathub com.getpostman.Postman -y
}