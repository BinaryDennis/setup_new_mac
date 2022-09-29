#!/bin/bash

# DESCRIPTION
# Copies a preconfigured .gitingore_global and .gitconfig file from the repo to your home directory
# Dont forget to update the username in the .gitconfig file after running this script


echo "[CONFIG] Setting .gitignore_global"
mv ~/.gitignore_global ~/.gitignore_global.backup 2>/dev/null
cp resources/configuration-files/.gitignore_global ~/.
echo ""

echo "[CONFIG] Setting .gitconfig"
mv ~/.gitconfig ~/.gitconfig.backup 2>/dev/null
cp resources/configuration-files/.gitconfig ~/.
echo ""

echo "[DONE]"
echo "[IMPORTANT 1] - Update the user.name and user.email in ~/.gitconfig"
echo "[IMPORTANT 2] - Update user.signingkey property with your new ssh key id in ~/.gitconfig`
echo ""
