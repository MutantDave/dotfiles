export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"
export HOMEBREW_PATH=/opt/homebrew
export BREW_BIN=/opt/homebrew/bin
export PATH="$BREW_BIN:$HOME/.rbenv/shims:$HOME/.cargo/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=true
export HOMEBREW_NO_AUTO_UPDATE=1
export EDITOR='nvim'
export DOCKER_DEFAULT_PLATFORM=linux/amd64

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
  git
)

source $ZSH/oh-my-zsh.sh
source $HOME/.google-cloud-sdk/path.zsh.inc 2> /dev/null
source $HOME/.google-cloud-sdk/completion.zsh.inc 2> /dev/null
source $HOME/.privaterc 2> /dev/null

alias ls='ls -Gla'
alias vim='nvim'
alias t2='tree -L 2'
alias lg='lazygit'
alias :q='exit'

eval "$(zoxide init --cmd cd zsh)"

function get_az_token {
  json=$(az account get-access-token --resource api://$1)
  if [ $? -ne 0 ] 
  then
    az login
    json=$(az account get-access-token --resource api://$1)
  fi 
  accessToken=$(echo $json)
  echo "$accessToken" | jq -r .accessToken | tr -d '\n' | pbcopy
  echo "Access token copied to clipboard"
}

function get_az_token_qa {
  get_az_token c1b25e05-2c16-4b9d-9f87-7b7a816314da
}

function get_az_token_dev {
  get_az_token e1b8c208-1d16-4042-9d26-1c69ecd8a858
}

function get_az_token_stage {
  get_az_token 789d2941-f0fc-4401-8caf-28c01cd9d19e
}

function get_az_token_prod {
  get_az_token c6685f24-2448-4556-bd93-c24f4d3a0b4b
}

function to_gif {
  ffmpeg -y -i $1 -filter_complex "fps=10,split[s0][s1];[s0]palettegen=max_colors=32[p];[s1][p]paletteuse=dither=bayer" $2
}
