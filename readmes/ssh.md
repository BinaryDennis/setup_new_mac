## SSH

### ssh-keygen
```
ssh-keygen -t ed25519 -C "your_email@example.com" #Do not add any passphrase
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519
```

### ssh config

Create the file `~/.ssh/config` and add the following to it:

```
Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
```

### ssh misc

Test a specific key: `ssh -vT git@github.com`

See list of all added keys in the ssh-agent:  `ssh-add -l`

Add all keys to the ssh-agent: `ssh-add -A`
