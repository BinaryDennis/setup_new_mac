## SSH

### ssh-keygen

```
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain --apple-load-keychain ~/.ssh/id_ed25519
```

### ssh testing

Test a specific key: `ssh -vT git@github.com`

Test a git comimt: `git commit --allow-empty --message="Testing SSH signing"`

See list of all added keys in the ssh-agent: `ssh-add -L`

Add all keys to the ssh-agent: `ssh-add --apple-use-keychain --apple-load-keychain`
