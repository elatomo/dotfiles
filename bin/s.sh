#!/usr/bin/env bash

# Surf duckduckgo.com
#    ddg.sh [QUERY]

BASE_URL="https://www.duckduckgo.com"

# no extra arguments
if [ $# -eq 0 ]; then
    surf $BASE_URL
else
    # treat arguments as search query
    query=$(printf "+%s" "$@")
    query=${query:1}
    surf "https://www.duckduckgo.com?q=$query"
fi

exit $?
