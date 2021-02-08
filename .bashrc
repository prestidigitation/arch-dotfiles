#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
[ -f "/home/rowlanda/.ghcup/env" ] && source "/home/rowlanda/.ghcup/env" # ghcup-env
