#!/usr/bin/env bash
script_dir=$(cd $(dirname $0)/scripts && pwd)

echo "Bootstrapping..."

# check for "--extras" flag
if [ "$1" == "--extras" ]; then
	echo "Installing extras..."
	extras=true
else
	echo "Skipping extras..."
	extras=false
fi

function install {
  sh $script_dir/install/$1.sh
}

install homebrew
brew bundle

stow .

install tpm
~/.tmux/plugins/tpm/bin/install_plugins

install omz
install npm
install alacritty

# install extras
if [ "$extras" == true ]; then
	install foundry
	install rust
fi
