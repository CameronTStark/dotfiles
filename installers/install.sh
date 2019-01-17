#!/bin/bash
# DOTFILESDIR will be the directory where this file is located
DOTFILESDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
USERBINDIR="$(cd ../"$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# bash
ln -sfv ${DOTFILESDIR}/configs/bash_profile ~/.bash_profile

ln -sfv ${DOTFILESDIR}/configs/profile ~/.profile

# vim
ln -sfv ${DOTFILESDIR}/configs/vimrc ~/.vimrc

# tmux
ln -sfv ${DOTFILESDIR}/configs/tmux.conf ~/.tmux.conf

# zsh
ln -sfv ${DOTFILESDIR}/configs/zshrc ~/.zshrc

# git
ln -sfv ${DOTFILESDIR}/configs/gitconfig ~/.gitconfig

# grc
ln -fv ${DOTFILESDIR}/configs/grcat ~/.grcat

# ipython config (may need to be done after pipInstall.sh
ln -sfv ${DOTFILESDIR}/configs/ipython_config.py ~/.ipython/profile_default/ipython_config.py

# enable vi mode in bash on macs
ln -sfv ${DOTFILESDIR}/configs/inputrc ~/.inputrc

# vimperator
ln -sfv ${DOTFILESDIR}/configs/vimperator-ignored-keys ~/.vimperator/info/default/ignored-keys

# taskwarrior
ln -sfv ${DOTFILESDIR}/configs/taskrc ~/.taskrc
