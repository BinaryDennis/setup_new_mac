## GPG

To be updated!

### Generate keys
https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key

```
gpg --full-generate-key
```

### Add to Github
https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account

```
gpg --list-secret-keys --keyid-format=long
gpg --armor --export <KEYID> | pbcopy
```


### Add to keychain
https://gist.github.com/kushsharma/9bb40d88ea6141a713abe9ff173a7fae

```
gpg --list-secret-keys --keyid-format=long

mkdir -m 0700 ~/.gnupg
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" | tee ~/.gnupg/gpg-agent.conf
pkill -TERM gpg-agent

git config --global commit.gpgsign true
git config --global user.signingkey XXXKEYIDXXX
```