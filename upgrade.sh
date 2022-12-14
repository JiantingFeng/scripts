#!/bin/sh
# Copyright (c) 2022, Jianting Feng
# License: MIT
#
# Description: Upgrade the system dependencies, including brew, pip, npm, yarn, pnpm, etc.
# Usage: sh upgrade.sh

echo "Upgrade packages..."

# Upgrade brew
echo "Upgrade brew..."
brew update
brew upgrade
brew cleanup

# # Upgrade pip
# echo "Upgrade pip..."
# pip3 install --upgrade pip
# pip3 install --upgrade setuptools
# pip3 install --upgrade wheel
# pip3 install --upgrade virtualenv
# # Upgrade npm
# echo "Upgrade npm..."
# npm install -g npm
# npm update -g
#
# # Upgrade yarn
# echo "Upgrade yarn..."
# yarn global upgrade
#
# # Upgrade pnpm
# echo "Upgrade pnpm..."
# pnpm install -g pnpm
# pnpm update -g
#
# Backup the system
# echo "Backup the system..."
# mackup backup

# Upgrade nvim packages via packer
echo "Upgrade nvim packages..."
nvim -c "PackerSync" -c "qa"

# Sync dotfiles
echo "Sync dotfiles..."
cd ~/.config
git add .
git commit -m "Upgrade packages"
git push

echo "Upgrade packages done."
