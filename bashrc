#! /usr/bin/env bash

# my bashrc
# ~~~~~~~~~

# we want our aliases on non interactive mode
export BASH_ENV=~/.bash_aliases
export PATH=$HOME/bin:$HOME/.gem/ruby/2.3.0/bin:$PATH

# only interactive mode
[[ $- != *i* ]] && return

# a fancy prompt...
PS1='[\u@\h \W]\$ '

# aliases
source ~/.bash_aliases

# environment
export EDITOR=vim
export HISTCONTROL=ignoreboth  # no space or duplicates
export CLICOLOR=yes
# fix colors when paging
export PAGER=less
export LESS="-erX"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# python virtualenvwrapper
VIRTUALENVWRAPPER=`command -v virtualenvwrapper.sh`
export WORKON_HOME=$HOME/.virtualenvs
source $VIRTUALENVWRAPPER
# karma js and chromium
export CHROME_BIN='/usr/bin/chromium'

# golang
export GOPATH="$HOME/code/golang"
export PATH=$HOME/code/golang/bin:$PATH
