#!/bin/bash

# DESCRIPTION
# Installs global npm packages.

echo "[NPM] Installing Gulp"
sudo npm install -g gulp-cli
echo ""

echo "[NPM] Installing TypeScript"
sudo npm install -g typescript
echo ""


echo "[NPM] Installing Node Version Manager"
sudo npm install -g nvm
echo ""


echo "[NPM] Installing Firebase tools"
sudo npm install -g firebase-tools
echo ""


echo "[NPM] Installing Swiff"
sudo npm install --global swiff
echo ""

echo "[NPM] Done"
echo ""