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

function rgnotas() {
    rg "$@" ~/Notas
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

function mkvirtualenv-asdf() {
    # Create a virtualenv using Python version from .tool-versions file if
    # available and associate it with current directory
    local venv_name=$1
    shift

    if [[ -z $venv_name ]]; then
        echo "⚠ Please provide a virtualenv name"
        return 1
    fi

    local python_cmd="python"
    local python_version=""

    # Check for .tool-versions file
    if [[ -f .tool-versions ]]; then
        python_version=$(grep "^python " .tool-versions | awk '{print $2}')
        if [[ -n $python_version ]]; then
            python_cmd="$(asdf where python $python_version)/bin/python"
            echo "🐍 Using Python $python_version from .tool-versions file"
        fi
    fi

    # Create virtualenv and associate with current directory
    mkvirtualenv -p $python_cmd $venv_name -a . "$@"

    echo "✅ Created virtualenv '$venv_name' with Python" \
         "$(basename $python_cmd) and associated with current directory"
}


alias jsonpp='python -m json.tool'
alias http='python3 -m http.server'

alias git-graph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias pn=pnpm

## system
alias backup='rsync -avz'
alias sbackup='backup -e ssh'
