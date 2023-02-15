## SSH

### Sign your Github commits with SSH

[See more](https://calebhearth.com/sign-git-with-ssh)

```
git config --global commit.gpgsign true
git config --global gpg.format ssh
ssh-add -L
git config --global user.signingkey "ssh-ed25519 <your key id>"
git commit --allow-empty --message="Testing SSH signing"
```

### ssh-keygen

```
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain --apple-load-keychain ~/.ssh/id_ed25519
```

### ssh config

Create the file `~/.ssh/config` and add the following to it:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

### ssh misc

Test a specific key: `ssh -vT git@github.com`

See list of all added keys in the ssh-agent: `ssh-add -l`

Add all keys to the ssh-agent: `ssh-add --apple-use-keychain --apple-load-keychain`
