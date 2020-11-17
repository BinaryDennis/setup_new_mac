# OS X Setup Script

This repository contains scripts that can be used to setup a brand new
MacBook within minutes. It applies OSX settings, installs applications
and npm packages and can even configure your SSH keys.


## How to use it

To trigger the main setup script, run `./setup.sh`. This will take you
to the main menu, where all available setup options are presented. You
can also type `./setup.sh [OPTION]` to trigger a specific setup script.

Once you run the `system` script, you get access to amazing tools like
`Homebrew`, `Homebrew-Cask`, `Brew Bundle`, `RubyGems`, `NPM` etc. You
will then be able to use `Brewfile` and `Gemfile` to manage packages.


## Brewfile

`Brewfile` is used to specify which packages and applications you want
to install with Homebrew and Homebrew Cask. You can update packages in
this file by running the system script and selecting `brew`, or simply
just run `brew bundle` from the terminal.


## Gemfile

`Gemfile` is used to handle packages you want to install with RubyGems.
You can update packages in this file, by running the system script and
selecting `gem`, or simply just run `bundle install` from the terminal.


## NPM

I use `Node` and `npm` to install web development software, as well as
tools that I use for hybrid app development. However, since these libs
are global, I manage these installations from `scripts/npm.sh` instead
of a `package.json` file.


## Other things to install
- [Lockdown](https://lockdownhq.com)
- [Arial Screensaver](https://github.com/JohnCoates/Aerial)
- [Expressions](https://www.apptorium.com/expressions)
- [Swiff](https://github.com/agens-no/swiff)
- [xScope](https://xscopeapp.com)
- [Zeplin](https://zpl.io/download-mac)
- Network Link Conditioner from [Additional Tools for Xcode](https://download.developer.apple.com/Developer_Tools/Additional_Tools_for_Xcode_11_GM_Seed/Additional_Tools_for_Xcode_11_GM_Seed.dmg)
- [VLC](https://www.videolan.org/vlc/)
- [SF Symbols](https://developer.apple.com/design/downloads/SF-Symbols.dmg)
- [Roboto Fonts](https://fonts.google.com/specimen/Roboto)
- Better Safari Blocker
- Paintcode
- Luminar
- [Audio HiJack](https://rogueamoeba.com/audiohijack/)
- Boom 3D
- NVM (`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash`)


## SSH info
Create ssh keys WITH passphrase otherwise they wont be automatically be added to ssh-agent after reboot!
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

If you already have generated ssh-keys without passphrase, you can add passphrase to them by:
```
ssh-keygen -p -f ~/.ssh/<private-key>
```

Test a specific key: `sh -vT git@github.com`

See list of all added keys in the ssh-agent:  `ssh-add -l`

Add a specific key to the ssh-agent: `ssh-add -K ~/.ssh/<private key>`

Add all keys to the ssh-agent: `ssh-add -A`



### SSH config
~/.ssh/config
```
Host           Bitbucket
Hostname       bitbucket.org
IdentityFile    ~/.ssh/id_rsa_bookbeat
IdentitiesOnly yes
UseKeychain    yes
AddKeysToAgent yes
PreferredAuthentications publickey
```

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


