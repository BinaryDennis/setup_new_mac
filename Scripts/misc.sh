#!/bin/bash

# DESCRIPTION
# Misc

echo "[MISC] Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ""

echo "[MISC] Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -fr fonts
echo ""

echo "[MISC] Installing powerline shell"
pip3 install powerline-shell
echo ""

echo "[MISC] Setting .zshrc"
mv ~/.zshrc ~/.zshrc.backup 2>/dev/null ; cp Configs/.zshrc ~/.
echo ""