eval "$(starship init zsh)"

export GOPATH="$HOME/go"
export PATH="/opt/homebrew/bin:$PATH:$HOME/.foundry/bin:$GOPATH/bin"

export HOMEBREW_NO_ENV_HINTS=true

alias vim='nvim'
export EDITOR='nvim'
