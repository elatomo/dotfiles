#!/bin/sh

# Usage: log.sh [TAG]...
# Pipe and timestamp anything from standard input to log file.

LOG=~/org/log.wiki

tags() {
    local tags
    local sep=" " # FIXME

    for tag in "$@"; do
        tags+="[[$tag]]$sep"
    done

    echo "$tags"
}

# message to file and output
while read message; do
    text+="$message\n"
done

# FIXME: in POSIX sh, echo flags are not supported
echo -e "== $(date) ==\n$(tags $@)\n$text" | tee -a $LOG
