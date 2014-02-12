#!/bin/sh
#
# Appends and timestamp input to log file

LOG=~/vimwiki/log.wiki

echo -e "\n== $(date) ==" >> $LOG

# message to file and output
while read message; do
    echo -e "\n$message\n" | tee -a $LOG
done
