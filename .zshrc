export ZSH=$HOME/.oh-my-zsh
export GOPATH="$HOME/go"
export HOMEBREW_PATH=/opt/homebrew
export BREW_BIN=/opt/homebrew/bin
export PATH="$BREW_BIN:$HOME/.rbenv/shims:$HOME/.cargo/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=true
export HOMEBREW_NO_AUTO_UPDATE=1
export EDITOR='nvim'
export DOCKER_DEFAULT_PLATFORM=linux/amd64
export BAT_THEME="tokyonight_night"

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

alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions -a'
alias vim='nvim'
alias t2='tree -L 2'
alias lg='lazygit'
alias :q='exit'
alias cat='bat'

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

function youtube {
  youtube-dl -x --audio-format mp3 $1
}

eval "$(fzf --zsh)"

# --- Ue fd instead for fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exlude .git"

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd|zoxide|ls) fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}
