#!/usr/bin/env bash

#
# ~/.bash_aliases
#

# enable alias expansion
shopt -s expand_aliases

## *nix
alias ll='ls -l'
alias la='ls -la'

## tools
alias ag='ag --nogroup --color-path="0;36"'
alias agg='ag --context=3'

function agorg() {
    ag "$@" ~/org
}

function aglog() {
    ag --after=4 --before=1  "$@" ~/org/log.wiki
}

alias ack='ag'
alias ackk='agg'
alias ackorg='agorg'
alias acklog='aglog'

alias howdoi='howdoi -c'

alias surf='surf -c /dev/null'

alias wgetpage='wget -p -k'

function wgetmp3() {
    workon -n music
    youtube-dl -o "%(autonumber)s-%(title)s-%(id)s.%(ext)s" -x --audio-quality 0 --audio-format mp3 "$@"
    deactivate
}

alias xclipcopy='xclip -selection clipboard'
alias xclippaste='xclip -o -selection clipboard'

## dev
alias todo='cat TODO.* 2>/dev/null;ack "TODO|todo::"'
alias fixme='ack "FIXME"'

alias mkvirtualenv27='mkvirtualenv -p /usr/bin/python2.7 -a .'
alias mkvirtualenv34='mkvirtualenv -p /usr/bin/python3.4 -a .'
alias mkvirtualenv35='mkvirtualenv -p /usr/bin/python3.5 -a .'
alias mkvirtualenv='mkvirtualenv -p /usr/bin/python3.4 -a .'

alias jsonpp='python -mjson.tool'

alias git-graph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

## system
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
