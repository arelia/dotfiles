# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kolo"
# tjkirch, garyblessington (similar to my bash colors), af-magic (clean)

# use case-sensitive completion.
# CASE_SENSITIVE="true"

# use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# disable colors in ls.
# DISABLE_LS_COLORS="true"

# disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# enable command auto-correction.
# ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast z)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
alias zs="source ~/.zshrc"
alias zedit="nano ~/.zshrc"

alias ll="ls -lha"
alias pyserv="python -m SimpleHTTPServer"

# Git aliases
alias gs="git status"
alias gpu="git push -u origin HEAD"
alias gl="git log -3"
alias gla="git log --all"
alias glp="git log --all --graph --decorate --oneline --simplify-by-decoration"
alias gcan="git commit --amend --no-edit"
alias gcanp="git commit --amend --no-edit && git push -f"
alias gpf="git push -f"

# Auto escape square brackets in zsh
# source: https://kinopyo.com/en/blog/escape-square-bracket-by-default-in-zsh

# alias rake='noglob rake'

eval "$(nodenv init -)"
eval "$(rbenv init -)"

# Link OpenSSL per https://github.com/puma/puma/issues/2544
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"


# To do or automate
# Install Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/areliajones/.zprofile\n    eval "$(/opt/homebrew/bin/brew shellenv)"

# brew install gh
# brew install nodenv
# brew install rbenv ruby-build
