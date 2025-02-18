# For config directory
export XDG_CONFIG_HOME="$HOME/.config"

# For home .bin directory
export HOMEBIN="$HOME/.bin"

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

# For vaults
export VAULTS="$HOME/vaults"

# For paths
typeset -U path
path=("$HOME/.cargo/bin" "$HOME/.bin/rofi" "$HOME/.bin/nodejs/bin" "$HOME/.bin/luals/bin" "$HOME/.local/bin" $path)
