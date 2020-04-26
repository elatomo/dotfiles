SHELL := /usr/bin/env bash
TARGET ?= $(HOME)
HERE := $(PWD)

install: init install-x install-i3 install-bash install-vim \
	install-spacemacs install-tmux install-git install-moc \
	install-pylint install-bin

init:
	git submodule init && git submodule update

install-x:
	ln -sf $(HERE)/Xkbmap $(TARGET)/.Xkbmap
	ln -sf $(HERE)/Xresources $(TARGET)/.Xresources

install-i3:
	mkdir -p $(TARGET)/.config/i3
	ln -sf $(HERE)/config/i3/config $(TARGET)/.config/i3/config
	mkdir -p $(TARGET)/.config/i3status
	ln -sf $(HERE)/config/i3status/config $(TARGET)/.config/i3status/config

install-bash:
	ln -sf $(HERE)/bash_profile $(TARGET)/.bash_profile
	ln -sf $(HERE)/bash_aliases $(TARGET)/.bash_aliases
	ln -sf $(HERE)/bashrc $(TARGET)/.bashrc
	ln -sf $(HERE)/inputrc $(TARGET)/.inputrc

install-vim:
	rm -rf $(TARGET)/.vim
	ln -s $(HERE)/config/vim $(TARGET)/.vim
	ln -sf $(HERE)/config/vim/vimrc $(TARGET)/.vimrc

install-spacemacs:
	mkdir -p $(TARGET)/.spacemacs.d
	ln -sf $(HERE)/config/spacemacs/spacemacs $(TARGET)/.spacemacs
	ln -sf $(HERE)/config/spacemacs/snippets $(TARGET)/.spacemacs.d/snippets
	ln -sf $(HERE)/config/spacemacs/layers $(TARGET)/.spacemacs.d/layers

install-tmux:
	ln -sf $(HERE)/config/tmux/tmux.conf $(TARGET)/.tmux.conf

install-git:
	ln -sf $(HERE)/config/git/gitignore_global $(TARGET)/.gitignore_global

install-moc:
	rm -f $(TARGET)/.moc
	ln -s $(HERE)/config/moc $(TARGET)/.moc

install-pylint:
	ln -sf $(HERE)/config/pylint/pylint.rc $(TARGET)/.pylint.rc
