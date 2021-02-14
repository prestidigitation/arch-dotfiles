# PATH config
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
# Created by `userpath` on 2020-10-20 22:41:11
export PATH="$PATH:/home/rowlanda/.local/bin"

# Configure oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$DOT/.zsh-custom"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Set dotfiles to arch-dotfiles directory
DOT=~/arch-dotfiles

# Enable completion
autoload -U compinit
compinit -i
zstyle ':completion:*' menu select
setopt menu_complete

# Enable colors
autoload -U colors && colors
setopt prompt_subst

# History
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
HISTTIMEFORMAT="%h %d %H:%M:%S "

# Load aliases file
[[ -f "$DOT/.aliases" ]] && source "$DOT/.aliases"

# Load secrets file
[[ -f "$DOT/.env_secrets" ]] && source "$DOT/.env_secrets"

# Ruby
# rbenv
eval "$(rbenv init -)"
# Ruby on Rails
# Defines editor for ruby on rails merge conflicts
export THOR_MERGE=/usr/bin/code
