#!/usr/bin/env bash
script_dir=$(cd $(dirname $0) && pwd)

sh $script_dir/install/homebrew.sh
brew bundle

sh $script_dir/install/tpm.sh
~/.tmux/plugins/tpm/bin/install_plugins

sh $script_dir/install/omz.sh

sh $script_dir/install/rust.sh

sh $script_dir/install/npm.sh



