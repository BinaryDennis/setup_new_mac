# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

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
plugins=(
  git
  #github
  gitignore
  git-extras
  bundler
  osx
  zsh-autosuggestions
  zsh-syntax-highlighting
  #jsontools
  #node 
  #sudo
)

source ${ZSH}/oh-my-zsh.sh


# User configuration

## Misc
export PATH="/usr/local/bin:$PATH:/usr/local/sbin/:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$PATH:~/Scripts"

## Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"

## Android 
#export ANDROID_HOME="$HOME/Library/Android/sdk"
#export PATH="$PATH:$ANDROID_HOME"

## Flutter
export FLUTTER_ROOT="/Applications/flutter/bin"
export PATH="$PATH:$FLUTTER_ROOT"

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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
#ssh-add -A

# Ruby stuff
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
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
alias git-clean="git gc; git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done"
alias git-cb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias ddd="~/Scripts/deleteDerivedData.sh"
alias cputemp="while :; do osx-cpu-temp; sleep 1; done"
alias md="open -a MacDown"


### VISUAL CUSTOMISATION ### 

# Elements options of left prompt (remove the @username context)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
# Elements options of right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time battery)

# Add a second prompt line for the command
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in the first prompt 
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{054}%} $user_symbol%{%b%f%k%F{054}%} %{%f%}"

# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# Add a new line after the global prompt 
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Colorise the top Tabs of Iterm2 with the same color as background
# Just change the 100/50/100 wich are the rgb values 
echo -e "\033]6;1;bg;red;brightness;100\a"
echo -e "\033]6;1;bg;green;brightness;50\a"
echo -e "\033]6;1;bg;blue;brightness;150\a"


source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Applications/google-cloud-sdk/path.zsh.inc' ]; then . '/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Applications/google-cloud-sdk/completion.zsh.inc' ]; then . '/Applications/google-cloud-sdk/completion.zsh.inc'; fi

