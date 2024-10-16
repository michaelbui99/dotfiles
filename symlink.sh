#!/bin/sh

mkdir -p ~/.config/zellij

ln -fs ~/dotfiles/bash/.bashrc ~/.bashrc && \
    ln -fs ~/dotfiles/bash/.bash_aliases ~/.bash_aliases && \
    ln -fs ~/dotfiles/bash/.bash_profile ~/.bash_profile && \
    ln -fs ~/dotfiles/bash/.bash_functions ~/.bash_functions && \
    ln -fs ~/dotfiles/bash/.inputrc ~/.inputrc && \
    ln -fs ~/dotfiles/starship/starship.toml ~/.config/starship.toml && \
    ln -fs ~/dotfiles/vim/.vimrc  ~/.vimrc && \
    ln -fs ~/dotfiles/vim/.ideavimrc ~/.ideavimrc && \
    ln -fs ~/dotfiles/vim/.config/nvim ~/.config/nvim && \
    ln -fs ~/dotfiles/zellij/config.kdl ~/.config/zellij/config.kdl
