SHELL := /usr/bin/env bash
THEME := `pwd`/themes/base16-xresources/base16-solarized.dark.xresources

install: init install-x install-bash install-vim install-ctags \
         install-tmux install-git install-moc

init:
	git submodule init && git submodule update

install-x:
	rm -f ~/.Xresources
	ln -s `pwd`/Xresources ~/.Xresources
	rm -f ~/.xinitrc
	ln -s `pwd`/xinitrc ~/.xinitrc
	rm -f ~/.theme.xresources
	ln -s ${THEME} ~/.theme.xresources

install-bash:
	rm -f ~/.bash_aliases
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	rm -f ~/.bashrc
	ln -s `pwd`/bashrc ~/.bashrc

install-vim:
	rm -f ~/.vim
	ln -s `pwd`/config/vim ~/.vim
	rm -f ~/.vimrc
	ln -s `pwd`/config/vim/vimrc ~/.vimrc

install-ctags:
	rm -f ~/.ctags
	ln -s `pwd`/config/vim/ctags  ~/.ctags

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/config/tmux/tmux.conf ~/.tmux.conf

install-git:
	rm -f ~/.gitignore_global
	ln -s `pwd`/config/git/gitignore_global ~/.gitignore_global

install-moc:
	rm -f ~/.moc
	ln -s `pwd`/config/moc ~/.moc
