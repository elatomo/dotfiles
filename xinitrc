export DOT_XRESOURCESTHEME=~/.theme.xresources

# merge xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f $DOT_XRESOURCESTHEME ]] && xrdb -merge $DOT_XRESOURCESTHEME
# german keyboard layout, with caps lock mapped to control
setxkbmap -layout de -option ctrl:nocaps
# multimonitors at work
xrandr --output DVI-I-2 --auto --left-of DVI-I-1
# start i3
exec i3
