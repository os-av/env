#!/bin/bash

# Install packages
read -p "Install packages? [y/n] " pkgcon
if [ $pkgcon == "y" ]; then
  sudo pacman -S $(cat pkg-list)
else
  echo "Skipping..."
fi

# Copy scripts, wallpapers, and dotfiles
read -p "Install scripts, wallpapers and dotfiles? [y/n] " fcon
if [ $fcon == "y" ]; then
  xdg-user-dirs-update
  mkdir ~/.local/bin
  mkdir ~/Pictures/wallpapers
  mkdir ~/Pictures/screenshots

  cp ./scripts/*          ~/.local/bin
  cp ./assets/*           ~/Pictures/wallpapers
  cp ./dotfiles/.*        ~/
else
  echo "Skipping..."
fi

# Install software
read -p "Install software? (DWM, ST, dmenu)? [y/n] " swcon
if [ $swcon == "y" ]; then
  cd ./dwm          && sudo make clean install
  cd ../st          && sudo make clean install
  cd ../dmenu       && sudo make clean install
  cd ../dwmblocks   && sudo make clean install
  cd ../slock       && sudo make clean install
else
  echo "Skipping..."
fi

echo "Setup complete!"
