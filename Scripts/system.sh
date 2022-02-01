#!/bin/bash

# DESCRIPTION
# Installs OS X system software.

# EXECUTION

if ! command -v brew > /dev/null; then
    echo "[SYSTEM] Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "[SYSTEM] Update Homebrew"
    brew update
fi
echo ""

echo "[SYSTEM] Install Homebrew Cask"
brew tap caskroom/cask
echo ""

echo "[SYSTEM] Install Brew Bundle"
brew tap Homebrew/bundle
echo ""

echo "[SYSTEM] Install Ruby"
brew install ruby
echo ""

echo "[SYSTEM] Update gem"
gem update --system 
echo ""

echo "[SYSTEM] Install Node"
brew install node
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


