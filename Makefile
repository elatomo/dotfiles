SHELL := /usr/bin/env bash
TARGET ?= $(HOME)
HERE := $(PWD)

install: install-x install-i3 install-shell \
	install-spacemacs install-git install-moc \
	install-python install-bin install-gtk

install-x:
	stow x -t $(TARGET)

install-i3:
	stow i3 -t $(TARGET)

install-shell:
	stow shell -t $(TARGET)
	stow bash -t $(TARGET)
	stow alacritty -t $(TARGET)

install-spacemacs:
	stow spacemacs -t $(TARGET)

install-git:
	ln -sf $(HERE)/config/git/gitignore_global $(TARGET)/.gitignore_global
	git config --global core.excludesfile $(TARGET)/.gitignore_global

install-moc:
  # TODO: this one is broken
	rm -f $(TARGET)/.moc
	ln -s $(HERE)/config/moc $(TARGET)/.moc

install-gtk:
	stow gtk2 -t $(TARGET)
	stow gtk3 -t $(TARGET)

install-python:
	stow python -t $(TARGET)
