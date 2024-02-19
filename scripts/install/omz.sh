#!/usr/bin/env bash
script_dir=$(cd $(dirname $0) && pwd)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

sh $script_dir/utils/omz-add-plugin.sh tom-auger/cmdtime
