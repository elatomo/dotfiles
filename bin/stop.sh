#!/usr/bin/env bash

# TODO: Display i3bar message with phrase "$TIME are gone. rest!"
#   stop.sh [MINUTES]

# TODO: run directly in background

MIN=$1  # TODO: default value to 30

secs=$(($MIN * 60))
echo sleeping $secs secs
sleep "$secs"
i3-nagbar -t warning -m 'Have a rest! Now!'  # FIXME add time
