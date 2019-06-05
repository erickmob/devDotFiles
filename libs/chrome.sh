#!/usr/bin/env bash
function __add_chrome() {
    echo Installing chrome
    sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
    sudo dnf localinstall google-chrome-stable_current_x86_64.rpm -y
}