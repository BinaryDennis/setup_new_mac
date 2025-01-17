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
cd setup_new_mac-master/
```

### Install Homebrew

```
./scripts/install_brew.sh
```

```
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Install essential Brew taps

```
brew bundle --file brewfiles/primary/Brewfile
```

```
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

### Install NPM

```
./scripts/install_npm.sh
```

### Install Fonts

In the `resources/fonts` directory you will find 3 cool fonts to install, mark them all and open them in _Font Book_ app on Mac OS to add them to your system.
Note that the font `Fira Code` is installed as part of essential Brew taps.

- Roboto
- Roboto Slab
- Meslo

## Post Installation

Optionally download and install these things manually

- [Sensei](https://cindori.com/sensei)
- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Network Link Conditioner](https://developer.apple.com/download/all/?q=additional)
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- [DiskDrill](https://www.cleverfiles.com/download.html)
- [Bezel](https://nonstrict.eu/bezel/thank-you-for-trying-bezel?utm_source=bezel&utm_medium=website&utm_content=hero)
- [NordVPN](https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/NordVPN.pkg)
- [Github CoPilot for Xcode](https://docs.github.com/en/copilot/managing-copilot/configure-personal-settings/installing-the-github-copilot-extension-in-your-environment)

## Post Configuration

### Terminal Info

[Terminal info](readmes/terminal.md)

### SSH Info

[SSH info](readmes/ssh.md)

### GPG Info

[GPG info](readmes/gpg.md)

### Misc Info

[Misc info](readmes/misc.md)
