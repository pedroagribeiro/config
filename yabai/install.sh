#!/usr/bin/env bash

BASE_DIR=$(dirname "${BASH_SOURCE[0]:-$0}")
cd "${BASE_DIR}/.." || exit 127

# shellcheck source=../scripts/extras.sh
. scripts/extras.sh
# shellcheck source=../scripts/utils.sh
. scripts/utils.sh

install_package yabai

symlink "$HOME/config/yabai/yabairc" "$HOME/.config/yabai/yabairc"

execute "brew services start yabai" "Starting the yabai brew service..."

