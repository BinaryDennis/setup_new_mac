#!/bin/bash

# DESCRIPTION
# Shell improvements

# EXECUTION

echo "[ZSH] Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ""

echo "[ZSH] Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -fr fonts
echo ""

echo "[ZSH] Installing powerline shell"
sudo -H pip3 install powerline-shell 
echo ""

echo "[ZSH] Setting .zshrc"
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null ; cp Configs/.zshrc ~/.
echo ""
