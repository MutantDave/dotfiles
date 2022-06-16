export ZSH=$HOME/.oh-my-zsh
eval "$(starship init zsh)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

export GOPATH="$HOME/go"
export PATH="/opt/homebrew/bin:$PATH:$HOME/.foundry/bin:$GOPATH/bin"

export HOMEBREW_NO_ENV_HINTS=true

alias vim='nvim'
export EDITOR='nvim'


plugins=(
  cmdtime
  zsh-autocomplete
  zsh-syntax-highlighting
  z
)

source $ZSH/oh-my-zsh.sh
alias ls='ls -Gltra'

