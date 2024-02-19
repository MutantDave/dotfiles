#!/usr/bin/env bash
script_dir=$(cd $(dirname $0)/scripts && pwd)

function install {
  sh $script_dir/install/$1.sh
}

install homebrew
brew bundle

stow .

install tpm
~/.tmux/plugins/tpm/bin/install_plugins

install omz
install rust
install npm
install foundry
