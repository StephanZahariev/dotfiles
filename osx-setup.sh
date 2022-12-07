#!/bin/bash

#Setup Dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock orientation right
defaults write com.apple.dock minimize-to-application -bool TRUE
defaults write com.apple.dock static-only -bool true
killall Dock

#Setup Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.Finder AppleShowAllFiles -bool true
killall Finder
