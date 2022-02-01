# Setup a new macOS

This repository contains scripts that can be used to setup a brand new
MacBook within minutes. It applies OSX settings, installs applications
and npm packages and can even configure your SSH keys.


## How to use it

1. Install Xcode via AppStore

2. Run `./setup.sh` 

3. Install the following manually

### Fonts
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Fira Code font](https://github.com/tonsky/FiraCode)
- [Roboto Font](https://fonts.google.com/specimen/Roboto)
- [Roboto Slab Font](https://fonts.google.com/specimen/Roboto+Slab?query=roboto+slab)

### Developer related stufff
- [Expressions](https://www.apptorium.com/expressions)
- [Swiff](https://github.com/agens-no/swiff)
- [xScope](https://xscopeapp.com)
- [Zeplin](https://zpl.io/download-mac)
- Network Link Conditioner from [Additional Tools for Xcode](https://developer.apple.com/download/all/?q=additional)
- Slack
- Paintcode

### Nice to have
- [Moom](https://manytricks.com/moom/)
- [Lockdown](https://lockdownhq.com)
- [Arial Screensaver](https://github.com/JohnCoates/Aerial)
- [VLC](https://www.videolan.org/vlc/)
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- Boom 3D
- Luminar
- Grammarly Safari extension
- DuckDuckGo Safari extension


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



## Pimp your shell
1. ```brew cask install iterm2```
2. Download color scheme for iTerm: http://iterm2colorschemes.com
3. iTerm → Preferences → Profiles → Colors → Color presets → Import. Then again, Color presets → you-color-scheme-name
4. Install a patched font, eg Meslo (https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)
5. iTerm2 → Preferences → Profiles → Text → Change Font
6. ```brew install zsh```
7. ```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```
8. ```git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k```
9. ```brew install zsh-completions zsh-autosuggestions zsh-syntax-highlighting```
10. iTerm2 → Preferences → Profiles → Text → Cursor : ✓ Vertical Bar  → Blinking cursor : ✓ ON
11. iTerm → Preferences → Profiles → Keys → Load Preset… → Natural Text Editing 
12. Update your `~/.zshrc` file accordingly to the one in this repo
13. Update `Visual Code` settings -> *Font Family* : **Meslo LG M for Powerline**
14. Change keyboard shortcuts in Xcode/VSCode to use cmd-k for "Open Quickly.." dialog


