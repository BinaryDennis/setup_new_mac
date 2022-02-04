#!/bin/bash

# DESCRIPTION
# Copies all snippets to Xcode snippet folder

echo "Installing Swiff"
cd ~/Downloads
git clone git@github.com:agens-no/swiff.git 
cd swiff
sudo make
cd ..
echo ""
