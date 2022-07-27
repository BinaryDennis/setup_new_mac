# Setup a new macOS

When u get a new MacBook - follow these steps to save time installing all things you need

## Install Xcode first
Use AppStore and download and install Xcode and its command line tool

## Automated Installation 

What will be installed? 
1. [Brewfile primary](Brewfiles/primary/Brewfile) 
2. [Brewfile Secondary](Brewfiles/secondary/Brewfile)
3. [Gemfile](Gemfile)


### How to

Setup SSH keys and add the public signature to Github first.
```
curl -L -O https://raw.github.com/BinaryDennis/setup_new_mac/master/scripts/setup_ssh.sh
chmod 755 setup_ssh.sh
./setup_ssh.sh
```


Setup Git, Zsh and Homebrew before starting to install all Brew taps
```
git clone git@github.com:BinaryDennis/setup_new_mac.git
cd setup_new_mac/
./scripts/setup_git.sh
./scripts/setup_zsh.sh
./scripts/install_brew.sh

```

Install all Brew taps
```
brew bundle --file brewfiles/primary/Brewfile
$(brew --prefix)/opt/fzf/install

brew bundle --file brewfiles/secondary/Brewfile

```

## Manuall Installtion

### Fonts
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Fira Code font](https://github.com/tonsky/FiraCode)
- [Roboto Font](https://fonts.google.com/specimen/Roboto)
- [Roboto Slab Font](https://fonts.google.com/specimen/Roboto+Slab?query=roboto+slab)
- [Meslo](https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)

### Developer related stufff
- [Expressions](https://www.apptorium.com/expressions) `mas install 913158085`
- [xScope](https://xscopeapp.com) `mas install 889428659`
- [Zeplin](https://zpl.io/download-mac)
- Network Link Conditioner from [Additional Tools for Xcode](https://developer.apple.com/download/all/?q=additional)
- [Paintcode](https://www.paintcodeapp.com)
- [Insomnia plugin](https://github.com/georgeflug/insomnia-plugin-save-variables)

### Nice to have
- [1 Password 7](https://1password.com) `mas install 1333542190`
- [Moom](https://manytricks.com/moom/) `mas install 419330170`
- [Lockdown](https://lockdownhq.com) `mas install 1483255076
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- [Boom 3D](https://www.globaldelight.com/boom/) `mas install 1233048948`
- [Luminar](https://skylum.com/luminar)
- [termdown](https://github.com/trehn/termdown) `pip3 install termdown`

### Safari Extensions
- Grammarly `mas install 1462114288`
- DuckDuckGo `mas install 1482920575`
- 1Password (comes included with the 1Password app)

## Configuration

### Shell
[Pimp your shell](readmes/shell.md)

### Terminal
[Pimp your Terminal](readmes/terminal.md)

### SSH
[SSH info](readme/ssh.md)

### Misc
[Misc info](readme/misc.md)
