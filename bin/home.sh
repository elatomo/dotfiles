#!/bin/sh

figlet Home

i3-sensible-terminal \
    -T home \
    -e "sudo netctl start home"
