#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bash
ln -s ${BASEDIR}/bash/bashrc ~/.bashrc
ln -s ${BASEDIR}/bash/bash_profile ~/.bash_profile
ln -s ${BASEDIR}/bash/bash_alias ~/.bash_alias

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
# ln -s ${BASEDIR}/vim/ ~/.vim

# tmux
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf

# vimperator
ln -s ${BASEDIR}/vimperatorrc ~/.vimperatorrc


# zsh
# ln -s ${BASEDIR}/zshrc ~/.zshrc

# git
# ln -s ${BASEDIR}/gitconfig ~/.gitconfig
