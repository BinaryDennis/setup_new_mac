#!/bin/bash

# DESCRIPTION
# Installs npm and global npm packages.

echo "[NPM] Installing NPM"
brew install npm
echo ""

echo "[NPM] Installing Node Version Manager"
sudo npm install -g nvm
echo ""

echo "[NPM] Installing Yarn"
sudo npm install -g yarn
echo ""

echo "[NPM] Installing Gulp"
sudo npm install -g gulp-cli
echo ""

echo "[NPM] Installing TypeScript"
sudo npm install -g typescript
echo ""


echo "[NPM] Installing Firebase tools"
sudo npm install -g firebase-tools
echo ""


echo "[NPM] Installing Swiff"
sudo npm install -g swiff
echo ""

echo "[NPM] Done"
echo ""
