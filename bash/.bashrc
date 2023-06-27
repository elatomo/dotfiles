#! /usr/bin/env bash

#
# ~/.bashrc
#

# only interactive mode
[[ $- != *i* ]] && return

colors() {
	  local fgc bgc vals seq0

	  printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	  printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	  printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	  printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	  # foreground colors
	  for fgc in {30..37}; do
		    # background colors
		    for bgc in {40..47}; do
			      fgc=${fgc#37} # white
			      bgc=${bgc#40} # black

			      vals="${fgc:+$fgc;}${bgc}"
			      vals=${vals%%;}

			      seq0="${vals:+\e[${vals}m}"
			      printf "  %-9s" "${seq0:-(default)}"
			      printf " ${seq0}TEXT\e[m"
			      printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		    done
		    echo; echo
	  done
}

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
	  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		    ;;
	  screen*)
		    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		    ;;
esac

use_color=true
# TODO merge review after this....


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

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# python virtualenvwrapper
VIRTUALENVWRAPPER=`command -v virtualenvwrapper.sh`
export WORKON_HOME=$HOME/.virtualenvs
source $VIRTUALENVWRAPPER

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/bin/google-cloud-sdk/path.bash.inc" ]; then source "$HOME/bin/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/bin/google-cloud-sdk/completion.bash.inc" ]; then source "$HOME/bin/google-cloud-sdk/completion.bash.inc"; fi

# aws-vault default backend
export AWS_VAULT_BACKEND=pass
# See https://github.com/99designs/aws-vault/issues/686
export GPG_TTY=$(tty)
