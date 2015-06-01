XRESOURCES_THEME=~/.theme.xresources

# merge xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f $XRESOURCES_THEME ]] && xrdb -merge $XRESOURCES_THEME
# german keyboard layout, with caps lock mapped to control
setxkbmap -layout de -option ctrl:nocaps
# multimonitors at work
xrandr --output DVI-I-2 --auto --left-of DVI-I-1
# start i3
exec i3
