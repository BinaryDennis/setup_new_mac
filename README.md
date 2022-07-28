# Setup a new macOS

When u get a new MacBook - follow these steps to save time installing all things you need

What will be installed? 
1. Homebrew
2. [List of essential Brew taps](brewfiles/primary/Brewfile) 
3. [List of nice-to-have Brew taps](brewfiles/secondary/Brewfile)


## Pre-requisite 
1. Download and install _Xcode_
2. Install _Command Line Tools_ (`sudo xcode-select --install`)

## Installation

### Download this repo
Download this repo and go into the unzipped directory
```
curl -L -O https://github.com/BinaryDennis/setup_new_mac/archive/refs/heads/master.zip
unzip master.zip
cd setup_new_mac-master-master/
```

### Install Homebrew
```
./scripts/install_brew.sh
```

### Install essential Brew taps
```
brew bundle --file brewfiles/primary/Brewfile
$(brew --prefix)/opt/fzf/install
```

### Install nice-to-have Brew taps
```
brew bundle --file brewfiles/secondary/Brewfile
```

### Setup Zshrc
```
./scripts/setup_zsh.sh
```

### Setup Mac OS defaults & hostname
```
./scripts/setup_osx.sh
```

### Setup SSH 
```
./scripts/setup_ssh.sh
```

### Setup Git
```
./scripts/setup_git.sh
```

### Setup NPM
```
./scripts/setup_npm.sh
```

### Install Fonts
In the `resources/fonts` directory you will find 3 cool fonts to install, mark them all and open them in _Font Book_ app on Mac OS to add them to your system.
Note that the font `Fira Code` is installed as part of essential Brew taps.

- Roboto
- Roboto Slab
- Meslo
  

## Post Installation 
Optionally download and install these things manually
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Zeplin](https://zpl.io/download-mac)
- Network Link Conditioner from [Additional Tools for Xcode](https://developer.apple.com/download/all/?q=additional)
- [Paintcode](https://www.paintcodeapp.com)
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- [termdown](https://github.com/trehn/termdown) `pip3 install termdown`


## Post Configuration

### Terminal Info
[Terminal Info](readmes/terminal.md)

### SSH Info
[SSH info](readmes/ssh.md)

### Misc Info
[Misc info](readmes/misc.md)
