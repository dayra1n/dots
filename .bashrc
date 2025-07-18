#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set up XDG folders
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Export variables
export EDITOR=nvim
export VISUAL=nvim
export READER=zathura

# Custom aliases
alias ls='ls --color=auto'
alias ll='ls -lAh'
alias cp='cp -rv'
alias rm='rm -v'
alias grep='grep --color=auto'

alias vim='nvim'
alias ff='fastfetch'
alias pks='pacman -Q | wc -l'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Change directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Hellwal colorscheme
source ~/.cache/hellwal/variables.sh
sh ~/.cache/hellwal/terminal.sh

# Fastfetch startup
fastfetch

PS1='[\u@\h \W]\$ '
