#!/usr/bin/env bash
function __add_spaceship() {
    echo "Installing SpaceShip Prompt"
    sudo chmod a+w /usr/lib/node_modules
    yes | npm install -g spaceship-prompt -y
}
