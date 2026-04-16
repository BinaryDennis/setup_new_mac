#!/bin/bash

# DESCRIPTION
# Installing oh-my-zsh and other Shell improvements


echo "[ZSH] Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ""

echo "[ZSH] Setting .zshrc"
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null
cp resources/configuration-files/.zshrc ~/.
echo ""

echo "[DONE]"
echo ""
