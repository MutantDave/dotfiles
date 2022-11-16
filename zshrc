export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"
export HOMEBREW_PATH=/opt/homebrew
export BREW_BIN=/opt/homebrew/bin
export PATH="$BREW_BIN:$HOME/.ebcli-virtual-env/executables:$HOMEBREW_PATH/bin:$HOMEBREW_PATH/opt/node@16/bin:$HOME/.rbenv/shims:$HOME/.foundry/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.huff/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=true
export EDITOR='nvim'

eval "$(starship init zsh)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

VI_MODE_SET_CURSOR=true
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
source $HOME/.utils.sh

export PATH="$PATH:/Users/dave/.huff/bin:/Users/dave/.pyenv/shims"
