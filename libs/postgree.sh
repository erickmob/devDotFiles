#!/usr/bin/env bash
function __add_postgree() {
    echo "Installing vscode"
    sudo dnf install https://download.postgresql.org/pub/repos/yum/reporpms/F-30-x86_64/pgdg-fedora-repo-latest.noarch.rpm -y
    sudo dnf install postgresql11 -y
    sudo dnf install postgresql11-server -y
    sudo /usr/pgsql-11/bin/postgresql-11-setup initdb
    sudo systemctl enable postgresql-11
    sudo systemctl start postgresql-11

}


