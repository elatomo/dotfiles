#!/bin/sh

# only interactive mode
i3-sensible-terminal \
    -T home \
    -e sudo netctl start home
