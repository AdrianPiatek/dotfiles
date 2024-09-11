# Define Editor
export EDITOR=nvim

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------
fastfetch --config ~/.config/fastfetch/pf.jsonc
alias c='clear'
alias nf='fastfetch'
alias pf='fastfetch --config ~/.config/fastfetch/pf.jsonc'
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

alias confb='$EDITOR ~/dotfiles/.bashrc'


# -----------------------------------------------------
# start starship
# -----------------------------------------------------
eval "$(starship init bash)"


# -----------------------------------------------------
# start fzf key bindings
# -----------------------------------------------------
source /usr/share/doc/fzf/examples/key-bindings.bash
