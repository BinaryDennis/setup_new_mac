#!/bin/bash

# DESCRIPTION
# Creates an ssh key and copies it to the pasteboard

# EXECUTION

read -p "[SSH] Create new SSH key (yes/no) [yes]: " response
if test "$response" != "no"; then
	echo ""
	read -p "Enter your e-mail: " ssh_email
	echo ""
    echo "[SSH] Creating ssh key"
    ssh-keygen -t ed25519 -C $ssh_email
else
	exit
fi
echo ""

echo "[SSH] Adding ssh key to ssh-agent"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo ""

echo "[SSH] Copying ssh key to pasteboard"
pbcopy < ~/.ssh/id_rsa.pub


echo "[SSH] Setting config"
mv ~/.ssh/config ~/.ssh/config.backup 2>/dev/null
cp Configs/config ~/.ssh/.
echo ""

echo "[SSH] Done"
echo ""
