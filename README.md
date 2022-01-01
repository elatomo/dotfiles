# Dotfiles

My *dotfiles*: mainly vim, bash and x.

## Install

    git clone https://github.com/elatomo/dotfiles.git
    cd dotfiles && make

The default target is your home. You can always override it:

    TARGET=/tmp make

## Shortcuts

Lots of inspiration coming from the [xmonad](http://xmonad.org/) window manager.

### Tmux key mappings

Uses *CTRL+A* as prefix. Hopefully [caps lock key](http://www.noah.org/wiki/CapsLock_Remap_Howto)
is already remapped :)

| Shortcut            | Action                             |
|---------------------|------------------------------------|
| `<prefix> n`        | New window                         |
| `<prefix> [1 .. n]` | go to window 1 .. n                |
| `<prefix> q`        | close pane / window                |
| `<prefix> w`        | list all windows                   |
| `<prefix> ,`        | rename current windown             |
| `<prefix> s`        | split window vertically            |
| `<prefix> v`        | split window horizontally          |
| `<prefix> <prefix>` | pane cycling                       |
| `<prefix> x`        | toggle pane fullscreen             |
| `<prefix> r`        | reload config file                 |

