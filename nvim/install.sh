#!/usr/bin/env bash

BASE_DIR=$(dirname "${BASH_SOURCE[0]:-$0}")
cd "${BASE_DIR}/.." || exit 127

# shellcheck source=../scripts/extras.sh
. scripts/extras.sh
# shellcheck source=../scripts/utils.sh
. scripts/utils.sh

# Neovim releases
# github.com/neovim/neovim/releases
function custom_neovim_install {
	wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.tar.gz
	tar xvzf nvim-linux64.tar.gz
	mv nvim-linux64 $HOME/.local/bin/.
	rm nvim-linux64.tar.gz
	symlink "$HOME/.local/bin/nvim-linux64/bin/nvim" "$HOME/.local/bin/nvim"
}

function install_packer {
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	~/.local/share/nvim/site/pack/packer/start/packer.nvim
}

function github_copilot {
    git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim
}


custom_neovim_install

# symlink "$HOME/.dotfiles/nvim" "$HOME/.config/nvim"

