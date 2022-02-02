# Setup a new macOS

When u get a new MacBook - follow these steps to save time installing all things you need

## How to use it

1. Install Xcode via AppStore

2. Run setup.sh from this repo

```
git clone git@github.com:BinaryDennis/setup_new_mac.git
cd setup_new_mac 
./setup.sh
```

3. Install the following manually

### Fonts
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Fira Code font](https://github.com/tonsky/FiraCode)
- [Roboto Font](https://fonts.google.com/specimen/Roboto)
- [Roboto Slab Font](https://fonts.google.com/specimen/Roboto+Slab?query=roboto+slab)
- [Meslo](https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)

### Developer related stufff
- [Expressions](https://www.apptorium.com/expressions)
- [xScope](https://xscopeapp.com)
- [Zeplin](https://zpl.io/download-mac)
- Network Link Conditioner from [Additional Tools for Xcode](https://developer.apple.com/download/all/?q=additional)
- Paintcode

### Nice to have
- [Moom](https://manytricks.com/moom/)
- [Lockdown](https://lockdownhq.com)
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- Boom 3D
- Luminar

### Safari Extensions
- Grammarly
- DuckDuckGo
- 1Password


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
1. Install oh-my-zsh 
```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```
2. Install powerlevel9k 
```git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k```
3. Install zsh plugins 
```brew install zsh-completions zsh-autosuggestions zsh-syntax-highlighting```


## Pimp your Terminal
1. Install iterm2 ```brew cask install iterm2```
2. Download color scheme for iTerm: http://iterm2colorschemes.com
3. iTerm → Preferences → Profiles → Colors → Color presets → Import. Then again, Color presets → Choose `Andromeda`
4. Install a patched font, eg [Meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)
5. iTerm2 → Preferences → Profiles → Text → Change Font to 'Noto Mono for Powerline'
6. iTerm2 → Preferences → Profiles → Text → Use prebuilt Powerline glyphs
11. iTerm2 → Preferences → Profiles → Text → Cursor : ✓ Vertical Bar  → Blinking cursor : ✓ ON
12. iTerm → Preferences → Profiles → Keys → KeyMapping → Load Preset… → Natural Text Editing 
13. Update your `~/.zshrc` file accordingly to the one in this repo

## Key mappings
1. In `Visual Code`, Change keyboard shortcut for **"Goto file..."** from `cmd+P` to `cmd+K` (remove keybinding `cmd+K` for 'clear terminal')
2. In `Xcode`, change keyboard shortcut for **"Open Quickly..."** from `cmd+P` to `cmd+K` (remove keybinding `cmd+K` for 'clear terminal')


## Other stuff
1. Update `Visual Code` settings -> *Font Family* : **Meslo LG M for Powerline**
2. Active Alfred's copy & paste history functionality


