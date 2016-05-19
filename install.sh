#!/bin/bash
# BASEDIR will be the directory where this file is located
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bash
ln -sfv ${BASEDIR}/bash/bashrc ~/.bashrc
ln -sfv ${BASEDIR}/bash/bash_profile ~/.bash_profile
ln -sfv ${BASEDIR}/bash/bash_alias ~/.bash_alias

# vim
ln -sfv ${BASEDIR}/vimrc ~/.vimrc
# ln -sfv ${BASEDIR}/vim/ ~/.vim

# tmux
ln -sfv ${BASEDIR}/tmux.conf ~/.tmux.conf

# vimperator
ln -sfv ${BASEDIR}/vimperatorrc ~/.vimperatorrc

#todo
ln -sfv ${BASEDIR}/todo ~/.todo

# zsh
# ln -sfv ${BASEDIR}/zshrc ~/.zshrc

# git
ln -sfv ${BASEDIR}/git/.gitconfig ~
