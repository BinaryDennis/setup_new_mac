#!/bin/bash

# DESCRIPTION
# 1. Installs HomeBrew 
# 2. updates Gem
# 3. Installs fzf


if ! command -v brew > /dev/null; then
    echo "[SYSTEM] Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "[SYSTEM] Update Homebrew"
    brew update
fi
echo ""

echo "[SYSTEM] Update gem"
sudo gem update --system 
echo ""

echo "fzf - must be run AFTER brew installs fzf"
$(brew --prefix)/opt/fzf/install
echo ""



