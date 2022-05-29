#!/bin/bash

rm -rf ~/.config/fish
ln -s ~/Documents/dotfiles/.config/fish ~/.config/fish

rm -rf ~/.config/karabiner
ln -s ~/Documents/dotfiles/.config/karabiner ~/.config/karabiner

rm -rf ~/.config/.hammerspoon
ln -s ~/Documents/dotfiles/.hammerspoon ~/.config/.hammerspoon

rm ~/.gitconfig
ln -s ~/Documents/dotfiles/.gitconfig ~/.gitconfig

rm ~/.gitignore
ln -s ~/Documents/dotfiles/.gitignore ~/.gitignore