SHELL := /usr/bin/env bash
TARGET ?= $(HOME)
HERE := $(PWD)
SCRIPTS = ideaa.sh log.sh lock_screen.sh mvn.sh mvn-ctags.sh avify.sh s.sh memusg.sh stop.sh solarize.sh synczoom.sh home.sh
THEME ?= ${HERE}/themes/base16-xresources/xresources/base16-one-light-256.Xresources

install: init install-fonts install-x install-i3 install-bash install-vim \
	install-spacemacs install-ctags install-tmux install-git install-moc \
	install-pylint install-bin

init:
	git submodule init && git submodule update

install-fonts:
	mkdir -p $(TARGET)/.local/share
	ln -sf $(HERE)/fonts $(TARGET)/.local/share/
	fc-cache

install-x:
	ln -sf $(HERE)/Xresources $(TARGET)/.Xresources
	ln -sf $(HERE)/xinitrc $(TARGET)/.xinitrc
	ln -sf $(THEME) $(TARGET)/.theme.xresources

install-i3:
	mkdir -p $(TARGET)/.config/i3
	ln -sf $(HERE)/config/i3/config $(TARGET)/.config/i3/config

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

install-ctags:
	ln -sf $(HERE)/config/vim/ctags $(TARGET)/.ctags

install-tmux:
	ln -sf $(HERE)/config/tmux/tmux.conf $(TARGET)/.tmux.conf

install-git:
	ln -sf $(HERE)/config/git/gitignore_global $(TARGET)/.gitignore_global

install-moc:
	rm -f $(TARGET)/.moc
	ln -s $(HERE)/config/moc $(TARGET)/.moc

install-pylint:
	ln -sf $(HERE)/config/pylint/pylint.rc $(TARGET)/.pylint.rc

install-bin:
	mkdir -p $(TARGET)/bin

	for script in $(SCRIPTS); do \
		ln -sf $(HERE)/bin/$$script $(TARGET)/bin/$$script; \
		chmod u+x $(TARGET)/bin/$$script; \
	done
	# TODO: remove broken links
