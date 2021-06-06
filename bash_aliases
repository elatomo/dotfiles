#!/usr/bin/env bash

#
# ~/.bash_aliases
#

# enable alias expansion
shopt -s expand_aliases

## *nix
alias ll='ls -l'
alias la='ls -la'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

## tools
alias rgg='rg --context=3'

function rgorg() {
    rg "$@" ~/org
}

function rglog() {
    rgg "$@" ~/org/log.wiki
}

alias wgetpage='wget -p -k'

function wgetmp3() {
    workon -n music
    youtube-dl -o "%(autonumber)s-%(title)s-%(id)s.%(ext)s" -x --audio-quality 0 --audio-format mp3 "$@" -i
    deactivate
}

alias xclipcopy='xclip -selection clipboard'
alias xclippaste='xclip -o -selection clipboard'

## dev
alias todo='cat TODO.* 2>/dev/null;ag "TODO|todo::"'
alias fixme='ag "FIXME"'

alias mkvirtualenv37='mkvirtualenv -p /usr/bin/python3.7 -a .'
alias mkvirtualenv38='mkvirtualenv -p /usr/bin/python3.8 -a .'
alias mkvirtualenv39='mkvirtualenv -p /usr/bin/python3.9 -a .'
alias mkvirtualenv='mkvirtualenv -a .'

alias jsonpp='python -mjson.tool'
alias http='python3 -m http.server'

alias git-graph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

## system
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
