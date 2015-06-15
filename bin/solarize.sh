#!/usr/bin/env bash

# TODO: solarize.sh
# Toggles dark/light theme for vim and xterm.
#
# FIXME: Expects a `$DOT_XRESOURCESTHEME` var pointing to a light/dark theme.

xt_link=$DOT_XRESOURCESTHEME  # xresources theme symlink
xt_file=$(readlink "$DOT_XRESOURCESTHEME") # xresources theme file

[ -z "$xt_file" ] && echo "DOT_XRESOURCESTHEME is not a symlink" && exit 1

# extract current background [dark|light]
bg_current=$(expr match "$xt_file" '.*base16.*\.\(dark\|light\)\.xresources')

if [ -z "$bg_current" ]; then
    echo "DOT_XRESOURCESTHEME doesn't look like a base16 'light/dark' theme"
    exit 1
fi

# toggle
[ "$bg_current" == "dark" ] && bg_new="light" || bg_new="dark"

# replace xtheme target
xt_file_new="${xt_file/$bg_current/$bg_new}"

[ -f "$xt_file_new" ] || (echo "Can't find a $bg_new version of $xt_file" && exit 1)  # TODO: test

# refresh link and merge xresources
echo setting link
ln -sf "$xt_file_new" "$xt_link"
echo merge
xrdb -merge "$xt_link"

# TODO: vim
