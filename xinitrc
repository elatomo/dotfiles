XRESOURCES_THEME=~/code/lab/dotfiles/themes/base16-xresources/base16-solarized.dark.xresources

# merge xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f $XRESOURCES_THEME ]] && xrdb -merge $XRESOURCES_THEME
# german keyboard layout, with caps lock mapped to control
setxkbmap -layout de -option ctrl:nocaps
# start i3
exec i3
