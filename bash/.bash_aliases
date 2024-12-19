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
alias rghidden='rg --hidden --no-ignore'

function rgorg() {
    rg "$@" ~/org
}

function rglog() {
    rgg "$@" ~/org/log.wiki
}

alias wgetpage='wget -p -k'

function wgetmp3() {
    # yt-dlp is installed using pipx
    yt-dlp -o "%(autonumber)s-%(title)s-%(id)s.%(ext)s" -x --audio-quality 0 --audio-format mp3 "$@" -i
}

function wgetaudio() {
    # yt-dlp is installed using pipx
    yt-dlp -o "%(autonumber)s-%(title)s-%(id)s.%(ext)s" -x --audio-quality 0 --audio-format best "$@" -i
}

alias xclipcopy='xclip -selection clipboard'
alias xclippaste='xclip -o -selection clipboard'

## dev
alias todo='cat TODO.* 2>/dev/null;ag "TODO|todo::"'
alias fixme='ag "FIXME"'

alias mkvirtualenv310='mkvirtualenv -p /usr/bin/python3.10 -a .'
alias mkvirtualenv311='mkvirtualenv -p /usr/bin/python3.11 -a .'
alias mkvirtualenv312='mkvirtualenv -p /usr/bin/python3.12 -a .'
alias mkvirtualenv='mkvirtualenv -a .'

alias jsonpp='python -m json.tool'
alias http='python3 -m http.server'

alias git-graph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias pn=pnpm

## system
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
