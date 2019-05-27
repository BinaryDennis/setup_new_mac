#!/bin/bash

# DESCRIPTION
# Configures OS X.

echo "[CONFIG] Finder, Show hidden files"
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder -9
echo ""

echo "[CONFIG] Enable tabbing between all controls"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
echo ""

echo "[CONFIG] Enable developer mode for admin users"
sudo /usr/sbin/DevToolsSecurity -enable
echo ""

echo "[CONFIG] Set specific path for screenshots"
mkdir -p ~/Desktop/screenshots/
defaults write com.apple.screencapture location ~/Desktop/screenshots/
echo ""

echo "[CONFIG] Enable AAC codec as default"
defaults write bluetoothaudiod "Enable AAC codec" -bool true
echo ""

echo "[CONFIG] Show build times in Xcode"
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
echo ""
