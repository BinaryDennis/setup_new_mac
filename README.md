# Setup a new macOS

When u get a new MacBook - follow these steps to save time installing all things you need

What will be installed? 
1. Homebrew
2. [Brewfile primary](Brewfiles/primary/Brewfile) 
3. [Brewfile Secondary](Brewfiles/secondary/Brewfile)


## Pre-requisite 

### Xcode
Use AppStore and download and install Xcode and its command line tool


### SSH 
Setup SSH keys and add the public signature to Github first.
```
curl -L -O https://raw.github.com/BinaryDennis/setup_new_mac/master/scripts/setup_ssh.sh
chmod 755 setup_ssh.sh
./setup_ssh.sh
```

### Git, Zsh and HomeBrew
Setup Git, Zsh and Homebrew before starting to install all Brew taps
```
git clone git@github.com:BinaryDennis/setup_new_mac.git
cd setup_new_mac/
./scripts/setup_git.sh
./scripts/setup_zsh.sh
./scripts/install_brew.sh

```

## Install all Brew taps
```
brew bundle --file brewfiles/primary/Brewfile
$(brew --prefix)/opt/fzf/install

brew bundle --file brewfiles/secondary/Brewfile

```

## Post Installation 
Optionally download and install these things manually

### Fonts
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Fira Code font](https://github.com/tonsky/FiraCode)
- [Roboto Font](https://fonts.google.com/specimen/Roboto)
- [Roboto Slab Font](https://fonts.google.com/specimen/Roboto+Slab?query=roboto+slab)
- [Meslo](https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)

### Developer related stufff
- [Zeplin](https://zpl.io/download-mac)
- Network Link Conditioner from [Additional Tools for Xcode](https://developer.apple.com/download/all/?q=additional)
- [Paintcode](https://www.paintcodeapp.com)
- [Insomnia plugin](https://github.com/georgeflug/insomnia-plugin-save-variables)

### Nice to have
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- [Luminar](https://skylum.com/luminar)
- [termdown](https://github.com/trehn/termdown) `pip3 install termdown`


## Post Configuration

### Shell
[Pimp your shell](readmes/shell.md)

### Terminal
[Pimp your Terminal](readmes/terminal.md)

### SSH
[SSH info](readmes/ssh.md)

### Misc
[Misc info](readmes/misc.md)
