# PATH config
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
# Created by `userpath` on 2020-10-20 22:41:11
export PATH="$PATH:/home/rowlanda/.local/bin"
# Created by newuser for 5.8
[ -f "/home/rowlanda/.ghcup/env" ] && source "/home/rowlanda/.ghcup/env" # ghcup-env

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

# Enable git info in prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
# RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{29}%b%f '
zstyle ':vcs_info:*' enable git

show_branch_symbol() {
  if (git rev-parse 2> /dev/null)
  then
    echo '%F{29}\UE0A0%f '
  fi
}

# Prompt info and layout
PROMPT=$'%B%F{105}%c%f%b $(show_branch_symbol)%B$vcs_info_msg_0_%b%F{220}\$%f '
# %F{220}\UE0A0%f 

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
