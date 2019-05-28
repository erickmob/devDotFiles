#!/usr/bin/env bash

source setup.sh

echo "   ___               ___        __    ____   _    __"
echo "  / _ \ ___  _  __  / _ \ ___  / /_  / __/  (_)  / /  __   ___"
echo " / // // -_)| |/ / / // // _ \/ __/ / _/   / /  / / / -_) (_-<"
echo "/____/ \__/ |___/ /____/ \___/\__/ /_/    /_/  /_/  \__/ /___/"

echo Welcome;
echo The following items will be installed:
echo "-Zsh;"
echo "-ohMyZsh;"
echo "-nvm;"
echo "-node.js;"
echo "-powerFonts;"
echo "-spaceship-prompt;"
echo "-JAVA 12 (JDK);"
echo "-maven;"
echo "-vscode;"
echo "-intellij;"
echo "-postgree;"
echo "-pgadmin;"
echo "-rambox;"
echo "-chrome;"
echo "-spotify;"

echo "Shall I proceed (y/n)"?

read proceed

if [ "$proceed" == "y" ]; then
    echo "ok"
    __add_user_sudoers
    __add_zsh
    __add_ohmyzsh
    __add_nvm
    __add_nvm_node
    __add_powerlineFonts
    __add_spaceship
    __add_java
    __add_maven
    __add_vscode
    __add_intellij
elif [ "$proceed" ==  "n" ]; then
    echo "you shall not pass!"
else
    echo "exiting"
fi