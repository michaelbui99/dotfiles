#!/bin/sh

ln -fs ~/dotfiles/bash/.bashrc ~/.bashrc && \
    ln -fs ~/dotfiles/bash/.bash_aliases ~/.bash_aliases && \
    ln -fs ~/dotfiles/bash/.bash_profile ~/.bash_profile && \
    ln -fs ~/dotfiles/bash/.inputrc ~/.inputrc && \
    ln -fs ~/dotfiles/starship/starship.toml ~/.config/starship.toml && \
    ln -fs ~/dotfiles/vim/.vimrc  ~/.vimrc
    ln -fs ~/dotfiles/vim/.ideavimrc ~/.ideavimrc
