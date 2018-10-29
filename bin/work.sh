#!/bin/sh

figlet Work

i3-sensible-terminal \
    -T work \
    -e "sudo netctl start work"
