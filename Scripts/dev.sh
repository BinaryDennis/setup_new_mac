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


# EXECUTION

echo "Copying Xcode code snippets..."
path_src=Snippets
path_dst=~/Library/Developer/Xcode/UserData/CodeSnippets
mkdir $path_dst
for file in $path_src/*.codesnippet; do
	cp $file $path_dst/$(basename $file)
done
echo "Copying Xcode code snippets: DONE"
echo ""
