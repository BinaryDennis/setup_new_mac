# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler osx git-flow-avh ruby git-extras github gitignore)

source ${ZSH}/oh-my-zsh.sh

# use Fish
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# use Z

. /usr/local/etc/profile.d/z.sh

# User configuration

## Misc
export PATH="/usr/local/bin:$PATH:/usr/local/sbin/:/bin:/usr/sbin:/sbin:/opt/X11/bin"

## Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"

## Android 
#export ANDROID_HOME="$HOME/Library/Android/sdk"
#export PATH="$PATH:$ANDROID_HOME"

## Flutter
#export FLUTTER_ROOT="/Applications/flutter/bin"
#export PATH="$PATH:$FLUTTER_ROOT"

## Go-lang (installed with Brew)
#export GOPATH="/usr/local/opt/go/libexec/bin"
#export PATH="$GOPATH:$PATH"
#export PATH="$PATH:/Applications/protoc/bin/"
#export PATH="$PATH:/Applications/go_appengine"

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:~/Scripts"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
     export EDITOR='vim'
else
     export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias ll="ls -l"
alias l="ls -l"
alias cd..="cd .."
alias ..="cd .."
alias la="ls -la"
alias c="clear"
alias v="vim"
alias cdcloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/myCloud"
alias xcode-clean="rm -fr ~/Library/Developer/Xcode/DerivedData/"
alias rgrep="grep -L -r --include \"*.storyboard\" --exclude \"*.txt\" \"Utility\" ."
alias resetsims="xcrun simctl erase all"
alias hashvalue="openssl sha -sha256"
alias git-clean="git gc; git fetch --prune; git branch -vv | grep ': gone' | awk '{print $1}' | xargs git branch -D"
alias ddd="~/Scripts/deleteDerivedData.sh"
alias ccb="git rev-parse --abbrev-ref HEAD | pbcopy"


function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi


#ruby stuff
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


