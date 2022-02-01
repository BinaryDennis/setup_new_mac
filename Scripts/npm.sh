#!/bin/bash

# DESCRIPTION
# Installs global npm packages.

# EXECUTION

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

echo "[NPM] Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
echo ""
