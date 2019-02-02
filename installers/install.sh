#!/bin/bash
# DOTFILESDIR will be the directory where this file is located
DOTFILESDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
USERBINDIR="$(cd ../"$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "This is user bin directory: $USERBINDIR "
echo "This is dot files directory: $DOTFILESDIR "

# bash
ln -sfv ${USERBINDIR}/configs/bash_profile ~/.bash_profile

ln -sfv ${USERBINDIR}/configs/profile ~/.profile

# vim
ln -sfv ${USERBINDIR}/configs/vimrc ~/.vimrc

# tmux
ln -sfv ${USERBINDIR}/configs/tmux.conf ~/.tmux.conf
ln -sfv ${USERBINDIR}/configs/tmux.mac.conf ~/.tmux.mac.conf
ln -sfv ${USERBINDIR}/configs/tmux.linux.conf ~/.tmux.linux.conf

# zsh
ln -sfv ${USERBINDIR}/configs/zshrc ~/.zshrc

# git
ln -sfv ${USERBINDIR}/configs/gitconfig ~/.gitconfig

# grc
ln -fv ${USERBINDIR}/configs/grcat ~/.grcat

# ipython config (may need to be done after pipInstall.sh
ln -sfv ${USERBINDIR}/configs/ipython_config.py ~/.ipython/profile_default/ipython_config.py

# enable vi mode in bash on macs
ln -sfv ${USERBINDIR}/configs/inputrc ~/.inputrc

# i3
ln -sfv ${USERBINDIR}/configs/i3config ~/.i3/config

# vimperator
ln -sfv ${USERBINDIR}/configs/vimperator-ignored-keys ~/.vimperator/info/default/ignored-keys

# taskwarrior
ln -sfv ${USERBINDIR}/configs/taskrc ~/.taskrc
