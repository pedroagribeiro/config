#!/usr/bin/env bash

BASE_DIR=$(dirname "${BASH_SOURCE[0]:-$0}")
cd "${BASE_DIR}/.." || exit 127

# shellcheck source=../scripts/extras.sh
. scripts/extras.sh
# shellcheck source=../scripts/utils.sh
. scripts/utils.sh

install_package skhd

symlink "$HOME/config/skhd/skhdrc" "$HOME/.config/skhd/skhdrc"

execute "brew services start skhd" "Starting the skhd brew service..."
