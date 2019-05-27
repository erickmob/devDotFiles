#!/usr/bin/env bash

source setup.sh

echo "   ___               ___        __    ____   _    __"
echo "  / _ \ ___  _  __  / _ \ ___  / /_  / __/  (_)  / /  __   ___"
echo " / // // -_)| |/ / / // // _ \/ __/ / _/   / /  / / / -_) (_-<"
echo "/____/ \__/ |___/ /____/ \___/\__/ /_/    /_/  /_/  \__/ /___/"

echo Welcome;
echo The following items will be installed:
echo "Zsh;"
echo "-ohMyZsh;"
echo "-powerFonts;"
echo "-spaceship-prompt;"
echo "-JAVA 12 (JDK);"
echo "-Environment variables;"
echo "-Alternatives (java);"
echo "-maven;"
echo "-nvm (node);"
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
elif [ "$proceed" ==  "n" ]; then
    echo "you shall not pass!"
else
    echo "exiting"
fi#!/usr/bin/env bash