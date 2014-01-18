# Dotfiles

Mostly *tmux* and *vim* for java and python on linux, enlighted by the [solarized](http://ethanschoonover.com/solarized) color scheme.

Mappings are inspired by [xmonad](http://xmonad.org/).

## Requirements

Expects:

- A debian/ubuntu host (check *bash/bashrc* file)
- The *dotfiles* folder cloned or symlinked in your home.
- *ctags-exubant* for browsing code with vim using ctag files.
- *maven*, if doing some java.
- *python-pip* and *virtualenvwrapper*, for python.
- *tmux*
- *mutt* and *abook*
- A nice monospaced font.

Don't forget to remap your [caps lock key](http://www.noah.org/wiki/CapsLock_Remap_Howto) to something more useful.

Nice to have: [ack](http://beyondgrep.com/), [pdfgrep](http://pdfgrep.sourceforge.net/)

## Set up

```shell
git submodule update --init

ln -s ~/dotfiles/bash/bashrc ~/.bashrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/ctags ~/.ctags
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/mutt ~/.mutt
```

### Solarized

Solarized `.dircolors`:

```shell
ln -s ~/dotfiles/dircolors/dircolors.ansi-universal ~/.dircolors

```
If using *gnome terminal*:

- Install solarized theme: `./~/dotfiles/bin/gnome-terminal-solarized/install.sh`
- `solarize` -- switch between dark and light themes.

If using *xresources*:

```shell
ln -s ~/dotfiles/xresources/solarized ~/.Xresources
xrdb -merge ~/.Xresources

```

## Using it

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

Inspired by the [xmonad](http://xmonad.org/) window manager:

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
