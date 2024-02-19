export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"
export HOMEBREW_PATH=/opt/homebrew
export BREW_BIN=/opt/homebrew/bin
export PATH="$BREW_BIN:$HOME/.ebcli-virtual-env/executables:$HOMEBREW_PATH/bin:$HOMEBREW_PATH/opt/node@16/bin:$HOME/.rbenv/shims:$HOME/.foundry/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/.huff/bin:$PATH"
export PATH="$PATH:$HOME/.huff/bin"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=true
export HOMEBREW_NO_AUTO_UPDATE=1
export EDITOR='nvim'

eval "$(starship init zsh)"

VI_MODE_SET_CURSOR=true
plugins=(
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
source $HOME/.google-cloud-sdk/path.zsh.inc 2> /dev/null
source $HOME/.google-cloud-sdk/completion.zsh.inc 2> /dev/null
source $HOME/.privaterc 2> /dev/null

alias ls='ls -Gla'
alias vim='nvim'
alias t2='tree -L 2'
alias lg='lazygit'
alias :q='exit'

eval "$(zoxide init --cmd cd zsh)"
