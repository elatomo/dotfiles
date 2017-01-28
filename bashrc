#! /usr/bin/env bash

#
# ~/.bashrc
#

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
