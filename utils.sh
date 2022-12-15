#!/bin/bash

alias ls='ls -Gltra'
alias vim='nvim'
alias t2='tree -L 2'
alias lg='lazygit'
alias source_zshrc='source ~/.zshrc'

function replace_text_rec {
  grep -lr $1 ./* | xargs sed -i "" "s/$1/$2/g"
}

function replace_text_file {
  grep -l $2 $1 | xargs sed -i "" "s/$2/$3/g"
}

function find_text {
  grep -r -n --exclude-dir={node_modules,build,out,cache,artifacts,dist,.next} $1
}

function convert_flac {
  find . -name "*.flac" -exec ffmpeg -i {} -ab 160k -map_metadata 0 -id3v2_version 3 {}.mp3 \;
}
