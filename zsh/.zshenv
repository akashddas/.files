# For config directory
export XDG_CONFIG_HOME="$HOME/.config"

# Custom home directory
export TENT="$HOME/tent"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Set the default editor to neovim
export EDITOR="nvim"
export VISUAL="nvim"

# For zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"

# Maximum events for internal history
export HISTSIZE=10000

# Maximum events in history file
export SAVEHIST=10000

# For dotfiles
export DOTFILES="$TENT/.files"

# For paths
typeset -U path
path=("$HOME/.bin/nodejs/bin" "$HOME/.bin/luals/bin" "$HOME/.local/bin" $path)
