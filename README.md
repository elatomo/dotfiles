# Dotfiles

My configuration files.

## Usage

Pull the repository, and then create the symbolic links [using GNU
stow](https://www.gnu.org/software/stow/):

```shell
$ git clone git@github.com:elatomo/dotfiles.git
$ cd dotfiles
$ stow spacemacs git  # or whatever else you'd like
```

## Dependencies

- GTK theme:
  [numix-solarized-gtk-theme](https://aur.archlinux.org/packages/gtk-theme-numix-solarized/)
- Icons and xcursor:
  [Chicago95](https://aur.archlinux.org/packages/xcursor-chicago95-git/)
- Emojis in terminal:
  [noto-fonts-emoji](https://archlinux.org/packages/extra/any/noto-fonts-emoji/)
- Other tools:
  - [libvterm](https://archlinux.org/packages/extra/x86_64/libvterm/) (to
    support Emacs vterm)
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [LightDM](https://wiki.archlinux.org/title/LightDM), which will configure
    Xorg keyboard with [.Xkbmap](./x/.Xkbmap)
  - [bash-completion](https://github.com/scop/bash-completion)
  - [asdf](https://asdf-vm.com/)

## Attribution

Spacemacs org-pomodoro sounds:
- [Ding 2.wav](https://freesound.org/people/gkillhour/sounds/267331/) by
  [gkillhour](https://freesound.org/people/gkillhour/) ([CC BY
  4.0](https://creativecommons.org/licenses/by/4.0/))
