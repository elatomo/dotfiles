SHELL := /usr/bin/env bash
TARGET ?= $(HOME)
HERE := $(PWD)
THEME ?= ${HERE}/themes/base16-xresources/base16-solarized.dark.xresources

install: init install-x install-bash install-vim install-ctags \
         install-tmux install-git install-moc install-bin

test:
	echo $(SHELL)
	echo $(THEME)
	echo $(TARGET)

init:
	git submodule init && git submodule update

install-x:
	ln -sf $(HERE)/Xresources $(TARGET)/.Xresources
	ln -sf $(HERE)/xinitrc $(TARGET)/.xinitrc
	ln -sf $(THEME) $(TARGET)/.theme.xresources

install-bash:
	ln -sf $(HERE)/bash_aliases $(TARGET)/.bash_aliases
	ln -sf $(HERE)/bashrc $(TARGET)/.bashrc

install-vim:
	rm -f $(TARGET)/.vim
	ln -s $(HERE)/config/vim $(TARGET)/.vim
	ln -sf $(HERE)/config/vim/vimrc $(TARGET)/.vimrc

install-ctags:
	ln -sf $(HERE)/config/vim/ctags $(TARGET)/.ctags

install-tmux:
	ln -sf $(HERE)/config/tmux/tmux.conf $(TARGET)/.tmux.conf

install-git:
	ln -sf $(HERE)/config/git/gitignore_global $(TARGET)/.gitignore_global

install-moc:
	rm -f $(TARGET)/.moc
	ln -s $(HERE)/config/moc $(TARGET)/.moc

install-bin:
	mkdir -p $(TARGET)/bin
	ln -sf $(HERE)/bin/lock_screen.sh $(TARGET)/bin/lock_screen.sh
	chmod u+x $(TARGET)/bin/lock_screen.sh
	ln -sf $(HERE)/bin/log.sh $(TARGET)/bin/log.sh
	chmod u+x $(TARGET)/bin/log.sh
	ln -sf $(HERE)/bin/mvn.sh $(TARGET)/bin/mvn.sh
	chmod u+x $(TARGET)/bin/mvn.sh
