#!/bin/bash

# DESCRIPTION
# Configures OS X.

# EXECUTION

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

echo "[CONFIG] Enable AAC 320 Codec for Bluetooth headphones"
sudo defaults write bluetoothaudiod "Enable AAC codec" -bool true
sudo defaults write bluetoothaudiod "AAC Bitrate" 320
echo ""

echo "[CONFIG] Enable CarPlay simulator extra settings"
defaults write com.apple.iphonesimulator CarPlayExtraOptions -bool YES
echo ""

read -p "[HOSTNAME] Choose your new hostname: " response
if test "$response" != ""; then
    sudo scutil --set ComputerName "$response"
    sudo scutil --set LocalHostName "$response"
    sudo scutil --set HostName "$response"
fi
echo "hostname set to: $response"
echo ""


echo "[DONE]"
echo ""