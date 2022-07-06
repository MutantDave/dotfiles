#!/usr/bin/env bash
NAME=$(echo $1 | sed 's:.*/::')
PLUGIN_PATH=$HOME/.oh-my-zsh/custom/plugins/$NAME
echo "Installing $1 to $PLUGIN_PATH"
rm -rf $PLUGIN_PATH || true
git clone --depth 1 https://github.com/$1.git $PLUGIN_PATH


