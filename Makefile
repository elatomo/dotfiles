SHELL := /usr/bin/env bash
TARGET ?= $(HOME)

.PHONY: help
help:  ## Show help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: all
all: install-x install-i3 install-shell install-spacemacs \
  install-git install-moc install-gtk install-python

.PHONY: install
install: all  ## Install all configuration files

.PHONY: install-x
install-x:  ## Install Xresources and LightDM's Xkbmap
	stow x -t $(TARGET)

.PHONY: install-i3
install-i3:  ## Install I3 configuration
	stow i3 -t $(TARGET)

.PHONY: install-shell
install-shell:  ## Install Shell, Bash and Alacritty configuration
	stow shell -t $(TARGET)
	stow bash -t $(TARGET)
	stow alacritty -t $(TARGET)

.PHONY: install-spacemacs
install-spacemacs:  ## Install Spacemacs configuration
	stow spacemacs -t $(TARGET)

.PHONY: install-git
install-git:  ## Install Git configuration
	stow git -t $(TARGET)

.PHONY: install-moc
install-moc:  ## Install Music On Console configuration
	stow moc -t $(TARGET)

.PHONY: install-gtk
install-gtk:  ## Install GTK configuration
	stow gtk2 -t $(TARGET)
	stow gtk3 -t $(TARGET)

.PHONY: install-python
install-python:  ## Install Python configuration
	stow python -t $(TARGET)
