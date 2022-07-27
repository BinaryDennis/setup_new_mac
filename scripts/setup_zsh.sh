#!/bin/bash

# DESCRIPTION
# Installing oh-my-zsh and other Shell improvements


echo "[ZSH] Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ""

echo "[ZSH] Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -fr fonts
echo ""

echo "[ZSH] Installing theme powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo ""

echo "[ZSH] Setting .zshrc"
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null
cp resources/configuration-files/.zshrc ~/.
echo ""

echo "[DONE]"
echo ""
