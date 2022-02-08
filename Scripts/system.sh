#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

# EXECUTION

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

echo "[SYSTEM] Copy utility scripts to ~/Scripts"
path_src=UtilityScripts
path_dst=~/Scripts
mkdir -p $path_dst
for file in $path_src/*; do
	cp -fr $file $path_dst/$(basename $file)
    chmod 755 $path_dst/$(basename $file)
done
echo ""


