# Dotfiles

My *dotfiles*: mainly vim, bash and x.

## Install

    git clone https://github.com/elatomo/dotfiles.git
    cd dotfiles && make

The default target is your home. You can always override it:

    TARGET=/tmp make

## Shortcuts

A trial to `vimify` my computer experience.

Lots of inspiration coming from the [xmonad](http://xmonad.org/) window manager.

### Vim key mappings

Uses *comma* (`,`) as `<leader>` key.

#### Windows

| Shortcut     | Action                             |
|--------------|------------------------------------|
| `<leader> s` | split window vertically            |
| `<leader> v` | split window horizontally          |
| `<leader> n` | new vertical split window          |
| `<leader> q` | close window                       |
| `<leader> qq`| quit vim                           |
| `<leader> j` | move to down window                |
| `<leader> k` | move to upper window               |
| `<leader> l` | move to right window               |
| `<leader> h` | move to left window                |
| `<leader> r` | rotate windows                     |
| `<leader> =` | adjusts viewports to the same size |

#### Tabs

| Shortcut            | Action            |
|---------------------|-------------------|
| `<leader> t`        | open new tab      |
| `<leader> [1 .. 6]` | go to tab 1 .. 6 |

#### Tools

| Shortcut             | Action                               |
|----------------------|--------------------------------------|
| `SPACE`              | fold / unfold                        |
| `<leader> f`         | toggle file browser (nerdtree)       |
| `<leader> g`         | toggle source code browser (taglist) |
| `<leader> c`         | toggle syntax checking (syntastic)   |
| `<leader>ww`         | vimwiki                              |
| `<leader>w<leader>w` | vimwiki diary                        |
| `CTROL+SPACE`        | create / toggle todo item            |

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

