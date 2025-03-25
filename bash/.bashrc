#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# by Stephan Raabe (2023)
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Define Editor
export EDITOR=nvim

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias c='clear'
alias nf='fastfetch'
alias la='eza -a --icons'
alias ls='eza --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias dot="cd ~/dotfiles"
alias cdf='cd $(fd -t d | fzf)'
alias cat='bat -p'

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
alias gf='git fetch'
alias gtree='git log --graph --decorate --pretty=oneline --abbrev-commit'

# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------

alias confb='$EDITOR ~/dotfiles/bash/.bashrc'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# Load Angular CLI autocompletion.
# source <(ng completion script)

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
export FZF_DEFAULT_OPTS="--walker-skip=.git,node_modules,target,.steam,.var,.local,Games"

# Setup pyenv
# eval "$(pyenv init --path)"

HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export PATH="$HOME/go/bin:$PATH"
export PATH=$PATH:~/dotfiles/scripts

# 5x definition of command:
# - Using it as a command
# - Ctrl+T
# - Alt+C
# - cat **<Tab> # files and directories
# - cd **<Tab> # directories
#  
# FZF_FD_OPTS="--hidden --follow --exclude '.git'"
# export FZF_DEFAULT_COMMAND="fd ${FZF_FD_OPTS}"
# export FZF_CTRL_T_COMMAND="fd ${FZF_FD_OPTS}"
# export FZF_ALT_C_COMMAND="fd --type d ${FZF_FD_OPTS}"
#
# _fzf_compgen_path() {
#     fd ${FZF_FD_OPTS} . "${1}"
# }
#
# _fzf_compgen_dir() {
#     fd --type d ${FZF_FD_OPTS} . "${1}"
# }
