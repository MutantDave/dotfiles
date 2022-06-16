export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"
export PATH="/opt/homebrew/bin:$PATH:$HOME/.foundry/bin:$GOPATH/bin"
export HOMEBREW_NO_ENV_HINTS=true
export EDITOR='nvim'
alias vim='nvim'

eval "$(starship init zsh)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

plugins=(
  cmdtime
  zsh-autocomplete
  zsh-syntax-highlighting
  z
)

source $ZSH/oh-my-zsh.sh

# Must be down here because omz overwrites
alias ls='ls -Gltra'
