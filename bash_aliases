#!/bin/bash
#
# ~/.alias.sh
#

## *nix
alias ll='ls -l'
alias la='ls -la'

## tools
alias ack='ack --break --color-filename=cyan'
alias ackk='ack -C3'

alias howdoi='howdoi -c'

alias surf='surf -c /dev/null'

alias wiki='vim +VimwikiIndex'
alias vimwiki='wiki'

## dev
alias todo='cat TODO* 2>/dev/null;ack "TODO|FIXME"'

alias mkvirtualenv='mkvirtualenv -a .'
alias mkvirtualenv2='mkvirtualenv -p /usr/bin/python2.7'

alias jsonpp='python -mjson.tool'

## system
alias lock_screen='i3lock -c 000000'

alias backup='rsync -avz'
alias sbackup='backup -e ssh'
