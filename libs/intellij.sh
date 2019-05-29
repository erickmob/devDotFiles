#!/usr/bin/env bash
function __add_intellij() {
    echo "Installing intellij"
    cd ~/Documents/
    mkdir "Intellij"
    cd Intellij
    wget https://download.jetbrains.com/idea/ideaIU-2019.1.3-no-jbr.tar.gz
    sudo tar -xvzf ~/Documents/Intellij/ideaIU-2019.1.3-no-jbr.tar.gz
    cd ~/Documents/Intellij/

    echo "Deleting tar"
    rm -f ideaIU-2019.1.3-no-jbr.tar.gz
    echo "ideaIU-2019.1.3-no-jbr.tar.gz DELETED"

    cd /usr/share/applications
    sudo touch idea.desktop
    sudo chmod a+w idea.desktop
    sudo echo "[Desktop Entry]" >> idea.desktop
    sudo echo "Encoding=UTF-8" >> idea.desktop
    sudo echo "Version=1.0" >> idea.desktop
    sudo echo "Name=IntelliJ IDEA" >> idea.desktop
    sudo echo "GenericName=Java IDE" >> idea.desktop
    sudo echo "Comment=IntelliJ IDEA is a code-centric IDE focused on developer productivity." >> idea.desktop
    sudo echo "Exec=~/Documents/Intellij/bin/idea.sh" >> idea.desktop
    sudo echo "Icon=~/Documents/Intellij/bin/idea.png" >> idea.desktop
    sudo echo "Terminal=false" >> idea.desktop
    sudo echo "Type=Application" >> idea.desktop
    sudo echo "Categories=Development;IDE" >> idea.desktop

}