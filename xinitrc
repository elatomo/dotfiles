export DOT_XRESOURCESTHEME=~/.theme.xresources

# load xresources
if [ -f ~/.Xresources ]; then xrdb -load ~/.Xresources; fi
if [ -f $DOT_XRESOURCESTHEME ]; then xrdb -merge $DOT_XRESOURCESTHEME; fi
# german keyboard layout, with caps lock mapped to control
setxkbmap -layout de -option ctrl:nocaps
# multimonitors at work
xrandr --output DVI-I-2 --auto --left-of DVI-I-1
# start i3
exec i3
