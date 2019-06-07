#!/usr/bin/env bash

source setup.sh

echo "   ___               ___        __    ____   _    __          "
echo "  / _ \ ___  _  __  / _ \ ___  / /_  / __/  (_)  / /  __   ___"
echo " / // // -_)| |/ / / // // _ \/ __/ / _/   / /  / / / -_) (_-<"
echo "/____/ \__/ |___/ /____/ \___/\__/ /_/    /_/  /_/  \__/ /___/"

echo Welcome;
echo The following items will be installed:
echo "-nvm;"
echo "-node.js;"
echo "-JAVA 12 (JDK);"
echo "-maven;"
echo "-vscode;"
echo "-intellij;"
echo "-postgree 11;"
echo "-pgadmin;"
echo "-postman;"
echo "-spotify;"
echo "-terminator"
echo "-chrome"
echo "-zsh"
echo "-powerlinefonts"

echo "Shall I proceed (y/n)"?

read proceed

if [ "$proceed" == "y" ]; then
    echo "ok"
    __add_user_sudoers
    __add_nvm
    __add_npm_node
    __add_java
    __add_maven
    __add_vscode
    __add_intellij
    __add_postgree
    __add_pgadmin
    __add_postman
    __add_spotify
    __add_terminator
    __add_chrome
    __add_zsh
    __add_powerlineFonts
    echo "Finished!! :D"

elif [ "$proceed" ==  "n" ]; then
    echo "you shall not pass!"
else
    echo "exiting"
fi