eval "$(starship init zsh)"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

export GOPATH="$HOME/go"
export PATH="/opt/homebrew/bin:$PATH:$HOME/.foundry/bin:$GOPATH/bin"

export HOMEBREW_NO_ENV_HINTS=true

alias vim='nvim'
alias ls='ls -ltra'
export EDITOR='nvim'

plugins=(
  )
