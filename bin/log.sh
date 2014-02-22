#!/bin/sh
#
# Appends and timestamp input to log file

LOG=~/vimwiki/log.wiki

function tags {
    local tags
    local sep=" " # FIXME

    for tag in "$@"; do
        tags+="[[$tag]]$sep"
    done

    echo $tags
}

# message to file and output
while read message; do
    echo -e "== $(date) ==\n$(tags $@)\n$message\n" | tee -a $LOG
done
