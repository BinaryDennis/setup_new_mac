#!/bin/bash

# DESCRIPTION
# Installs npm and global npm packages.

echo "[NPM] Installing NPM"
brew install npm
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

echo "[NPM] Installing git-mob"
sudo npm install -g git-mob
echo ""

echo "[NPM] Installing Node Version Manager v0.39.3"
# https://github.com/nvm-sh/nvm/blob/master/README.md
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
echo ""

echo "[NPM] Done"
echo ""
