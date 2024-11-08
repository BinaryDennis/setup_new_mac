#!/bin/bash

# DESCRIPTION
# 1. Creates a ssh key (type ed25519)
# 2. Adds it to the ssh-agent
# 3. Creates a SSH config file
# 4. Copies SSH public key to the pasteboard

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

echo "[SSH] Adding SSH key to SSH-agent"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain --apple-load-keychain ~/.ssh/id_ed25519
echo ""

echo "[SSH] Creating SSH config file"
mv ~/.ssh/config ~/.ssh/config.backup 2>/dev/null
cat > ~/.ssh/config << "EOF"
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOF
echo ""

echo "[SSH] Copying public SSH key fingerprint to PasteBoard"
pbcopy < ~/.ssh/id_ed25519.pub


echo "[SSH] Done"
echo "[IMPORTANT 1] - Paste your public SSH key fingerprint to Github as new Authentication Key"
echo "[IMPORTANT 2] - Paste your public SSH key fingerprint to Github as new Signing Key"
echo ""
