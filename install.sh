#!/bin/bash

# Install packages
sudo pacman -S $(cat pkg-list)

# Copy scripts, wallpapers, and dotfiles
xdg-user-dirs-update
mkdir -p ~/.local/bin
mkdir	 ~/Pictures/wallpapers
mkdir    ~/Pictures/screenshots

cp ./scripts/*    ~/.local/bin
cp ./assets/*     ~/Pictures/wallpapers
cp ./dotfiles/.*  ~/

# Install suckless software
cd ./dwm          && sudo make clean install
cd ../st          && sudo make clean install
cd ../dmenu       && sudo make clean install
cd ../dwmblocks   && sudo make clean install
cd ../slock       && sudo make clean install && cd ..

# Vim setup
vimplug=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs $vimplug
