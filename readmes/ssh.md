## SSH

### ssh-keygen
```
ssh-keygen -t ed25519 -C "your_email@example.com" 
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519
```

### ssh config

Create the file `~/.ssh/config` and add the following to it:

If you chose not to add a passphrase to your key, you should omit the UseKeychain line.
If you see a Bad configuration option: usekeychain error, add an additional line to the configuration's' Host * section.
```IgnoreUnknown UseKeychain```

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

### ssh misc

Test a specific key: `ssh -vT git@github.com`

See list of all added keys in the ssh-agent:  `ssh-add -l`

Add all keys to the ssh-agent: `ssh-add -A`

