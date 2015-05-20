#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# some aliases
# TODO move to aliases file
alias ll='ls -l'
alias la='ls -la'
alias mkvirtualenv='mkvirtualenv -a .'
alias mkvirtualenv2='mkvirtualenv -p /usr/bin/python2.7'
alias wiki='vim +VimwikiIndex'
alias vimwiki='wiki'
alias howdoi='howdoi -c'
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
alias jsonpp='python -mjson.tool'

# a fancy prompt...
PS1='[\u@\h \W]\$ '

# add ~/bin to PATH
export PATH=$HOME/bin:$PATH

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
if [ `id -u` != '0' ] && [ -e "$VIRTUALENVWRAPPER" ]; then
    export VIRTUALENV_USE_DISTRIBUTE=1      # Always use pip/distribute
    export WORKON_HOME=$HOME/.virtualenvs   # Where all virtualenvs will be stored
    source $VIRTUALENVWRAPPER
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
fi

# vim as default editor
export EDITOR=vim
