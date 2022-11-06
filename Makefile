SHELL := /usr/bin/env bash
TARGET ?= $(HOME)
HERE := $(PWD)

install: install-x install-i3 install-shell \
	install-spacemacs install-git install-moc \
	install-pylint install-bin install-gtk

install-x:
	ln -sf $(HERE)/Xkbmap $(TARGET)/.Xkbmap
	ln -sf $(HERE)/Xresources $(TARGET)/.Xresources

install-i3:
	mkdir -p $(TARGET)/.config/i3
	ln -sf $(HERE)/config/i3/config $(TARGET)/.config/i3/config
	mkdir -p $(TARGET)/.config/i3status
	ln -sf $(HERE)/config/i3status/config $(TARGET)/.config/i3status/config

install-shell:
	ln -sf $(HERE)/profile $(TARGET)/.profile
	ln -sf $(HERE)/bash_aliases $(TARGET)/.bash_aliases
	ln -sf $(HERE)/bashrc $(TARGET)/.bashrc
	ln -sf $(HERE)/inputrc $(TARGET)/.inputrc

install-spacemacs:
	stow spacemacs -t $(TARGET)

install-git:
	ln -sf $(HERE)/config/git/gitignore_global $(TARGET)/.gitignore_global
	git config --global core.excludesfile $(TARGET)/.gitignore_global

install-moc:
	rm -f $(TARGET)/.moc
	ln -s $(HERE)/config/moc $(TARGET)/.moc

install-pylint:
	ln -sf $(HERE)/config/pylint/pylint.rc $(TARGET)/.pylint.rc

install-gtk:
	rm -f $(TARGET)/.gtkrc-2.0
	ln -s $(HERE)/config/gtk-2.0/gtkrc-2.0 $(TARGET)/.gtkrc-2.0
	mkdir -p $(TARGET)/.config/gtk-3.0
	rm -f $(TARGET)/.config/gtk-3.0/settings.ini
	ln -s $(HERE)/config/gtk-3.0/settings.ini $(TARGET)/.config/gtk-3.0/settings.ini
