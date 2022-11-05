export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"
export HOMEBREW_PATH=$(brew --prefix)
export PATH="$HOME/.ebcli-virtual-env/executables:$HOMEBREW_PATH/bin:$HOMEBREW_PATH/opt/node@16/bin:$HOME/.rbenv/shims:$HOME/.foundry/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.huff/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=true
export EDITOR='nvim'

eval "$(starship init zsh)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

plugins=(
  z
  cmdtime
  zsh-syntax-highlighting
  brew
  ipfs
  docker
  docker-compose
  tmux
  yarn
  npm
  fancy-ctrl-z
  aws
  macos
  vi-mode
)

source $ZSH/oh-my-zsh.sh
source ./utils.sh

export PATH="$PATH:/Users/dave/.huff/bin"
