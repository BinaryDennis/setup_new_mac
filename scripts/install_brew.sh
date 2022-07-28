#!/bin/bash

# DESCRIPTION
# 1. Installs HomeBrew 


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

echo "[DONE]"
echo "[IMPORTANT] - Execute this in your terminal:"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
echo ""



