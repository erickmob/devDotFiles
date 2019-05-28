#!/usr/bin/env bash
function __add_intellij() {
    echo Installing intellij
    cd ~/Downloads/
    wget https://download.jetbrains.com/idea/ideaIU-2019.1.3-no-jbr.tar.gz
    sudo tar -xvzf ~/Downloads/ideaIU-2019.1.3-no-jbr.tar.gz
    sudo ln -s ideaIU-2019.1.3-no-jbr
    echo "Deleting tar"
    rm -f ideaIU-2019.1.3-no-jbr.tar.gz
    echo "ideaIU-2019.1.3-no-jbr.tar.gz DELETED"
}