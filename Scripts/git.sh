#!/bin/bash

# DESCRIPTION
# Git config

# EXECUTION

echo "[CONFIG] Setting .gitignore_global"
mv ~/.gitignore_global ~/.gitignore_global.backup 2>/dev/null
cp Configs/.gitignore_global ~/.
echo ""

echo "[CONFIG] Setting .gitconfig"
mv ~/.gitconfig ~/.gitconfig.backup 2>/dev/null
cp Configs/.gitconfig ~/.
echo ""

echo "[CONFIG] Installing Git LFS"
git lfs install
echo ""
