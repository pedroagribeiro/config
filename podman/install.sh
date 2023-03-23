#!/usr/bin/env bash

#set -Eeuo pipefail

BASE_DIR=$(dirname "${BASH_SOURCE[0]:-$0}")
cd "${BASE_DIR}/.." || exit 127

# shellcheck source=../scripts/extras.sh
. scripts/extras.sh
# shellcheck source=../scripts/utils.sh
. scripts/utils.sh

install_package podman

execute "podman machine init" "Initializing the Podman machine..."

execute "podman machine start" "Starting the Podman machine..."

