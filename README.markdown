DOTFILES
========

Intro
-----

Bash and vim configuration.

Notes
-----
The _Tagbar_ module needs _exuberant ctags_.

Solarized
---------

Set up solarized `.dircolors`:

    ln -s ~/dotfiles/dircolors/dircolors.ansi-universal ~/.dircolors

Set up solarized `.Xresources` (does not work on desktop):

    ln -s ~/dotfiles/xresources/solarized ~/.Xresources
    xrdb -merge ~/.Xresources

If using _gnome terminal_:

  - Install solarized theme:

    ./~/dotfiles/bin/gnome-terminal-solarized/install.sh

  - Switch dark/light: `solarize`
