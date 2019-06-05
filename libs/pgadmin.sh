#!/usr/bin/env bash
function __add_pgadmin() {
    echo Installing pgadmin
    sudo dnf install pgadmin3.x86_64 -y
}