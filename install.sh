#!/bin/bash
# DOTFILESDIR will be the directory where this file is located
DOTFILESDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "export DOTFILESDIR=${DOTFILESDIR}" > $HOME/.bash_basedir
# bash
ln -sfv ${DOTFILESDIR}/bash/bash_profile ~/.bash_profile
#ln -sfv ${DOTFILESDIR}/bash/bashrc ~/.bashrc
#ln -sfv ${DOTFILESDIR}/bash/bash_alias ~/.bash_alias

# vim
ln -sfv ${DOTFILESDIR}/vimrc ~/.vimrc
# ln -sfv ${DOTFILESDIR}/vim/ ~/.vim

# tmux
ln -sfv ${DOTFILESDIR}/tmux.conf ~/.tmux.conf

# vimperator
ln -sfv ${DOTFILESDIR}/vimperatorrc ~/.vimperatorrc

#todo
ln -sfv ${DOTFILESDIR}/todo ~/.todo

# zsh
# ln -sfv ${DOTFILESDIR}/zshrc ~/.zshrc

# git
ln -sfv ${DOTFILESDIR}/git/.gitconfig ~

# grc
ln -sfv ${DOTFILESDIR}/git/grcat ~/.grcat

# ipython config (may need to be done after pipInstall.sh
ln -sfv ${DOTFILESDIR}/git/ipython_config.py ~/.ipython/profile_default/ipython_config.py

# enable vi mode in bash on macs
ln -sfv ${DOTFILESDIR}/git/inputrc ~/.inputrc
