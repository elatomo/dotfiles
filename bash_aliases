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
alias ack='ack --break --color-filename=cyan'
alias ackk='ack -C3'

function ackwiki() {
    ack "$@" ~/vimwiki
}

function acklog() {
    ack --after-context=4 --before-context=1  "$@" ~/vimwiki/log.wiki
}

alias mdp='mdp -i'

alias howdoi='howdoi -c'

alias surf='surf -c /dev/null'

alias wiki='vim +VimwikiIndex'
alias vimwiki='wiki'

## dev
alias todo='cat TODO.* 2>/dev/null;ack "TODO|todo::"'
alias fixme='ack "FIXME"'

alias mkvirtualenv='mkvirtualenv -a .'
alias mkvirtualenv34='mkvirtualenv -p /usr/bin/python3.4'
alias mkvirtualenv35='mkvirtualenv -p /usr/bin/python3.5'

alias jsonpp='python -mjson.tool'

## system
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
