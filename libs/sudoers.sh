#!/bin/bash
set -e

__NO_PASSWD_SUDO='%wheel   ALL=(ALL)   NOPASSWD: ALL'

function __add_user_sudoers() {
  echo "Adicionando $USER no sudoers"
  sudo grep -qi "$__NO_PASSWD_SUDO" /etc/sudoers || \
    echo "$__NO_PASSWD_SUDO" | \
    sudo tee -a /etc/sudoers > /dev/null
}