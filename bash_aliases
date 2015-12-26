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

function agwiki() {
    ag "$@" ~/vimwiki
}

function aglog() {
    ag --after=4 --before=1  "$@" ~/vimwiki/log.wiki
}

alias ack='ag'
alias ackk='agg'
alias ackwiki='agwiki'
alias acklog='aglog'

alias howdoi='howdoi -c'

alias surf='surf -c /dev/null'

alias wiki='vim +VimwikiIndex'
alias vimwiki='wiki'

## dev
alias todo='cat TODO.* 2>/dev/null;ack "TODO|todo::"'
alias fixme='ack "FIXME"'

alias mkvirtualenv27='mkvirtualenv -p /usr/bin/python2.7 -a .'
alias mkvirtualenv34='mkvirtualenv -p /usr/bin/python3.4 -a .'
alias mkvirtualenv35='mkvirtualenv -p /usr/bin/python3.5 -a .'
alias mkvirtualenv='mkvirtualenv -p /usr/bin/python3.4 -a .'

alias jsonpp='python -mjson.tool'

## system
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
