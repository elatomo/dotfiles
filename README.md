# Dotfiles

My *dotfiles*: mainly vim, bash and x.

## Requirements

*ctags-exubant* for browsing code with vim using ctag files.

Don't forget to remap your [caps lock key](http://www.noah.org/wiki/CapsLock_Remap_Howto) to something more useful.

Nice to have: [ack](http://beyondgrep.com/), [pdfgrep](http://pdfgrep.sourceforge.net/)

## Set up

    git clone https://github.com/elatomo/dotfiles.git
    cd dotfiles && make

## Shortcuts

Inspired by the [xmonad](http://xmonad.org/) window manager:

### Tmux key mappings

Uses *CTRL+A* as prefix.

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

### Scripts

- `mvn`: maven wrapper to colorize output.
- `mvn-ctags`: download maven sources and generate ctags file.
