set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# history.
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

# Set default editors
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-256color'

# XDG directories
# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

HELPERS_DIRECTORY="$XDG_CONFIG_HOME/shell/"
for file in "$HELPERS_DIRECTORY"/*.sh; do
        if [ -f "$file" ]; then
                source "$file"
        fi
done

# Zoxide
eval "$(zoxide init bash)"

# Starship
eval "$(starship init bash)"
