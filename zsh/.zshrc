# Load paths and  environment variables
source $HOME/.zshenv

# Include everything inside external directory within $fpath
fpath=($ZDOTDIR/external $fpath)

# Include zsh-completions directory within $fpath
fpath=($HOME/.zsh/plugins/zsh_completions/src $fpath)

# Enable the completion system and initialize all completions
autoload -Uz compinit; compinit -i

# Autocomplete hidden files
_comp_options+=(globdots)

# For custom completions set them up in $ZDOTDIR/external/custom_completions.zsh
# autoload -Uz custom_completions.zsh && custom_completions.zsh

# For completion styling and fzf-tab
source $XDG_CONFIG_HOME/zsh/external/completion_styling.zsh
source $XDG_CONFIG_HOME/zsh/external/fzf_tab.plugin.zsh

# For vim cursor
source $ZDOTDIR/external/cursor_mode.zsh

# For history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# For vim mode
bindkey -v
export KEYTIMEOUT=1

# Vim mappings for completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# For autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Accept autosuggestions
bindkey -M viins '^f' autosuggest-accept
bindkey -M vicmd '^f' autosuggest-accept

# Show related commands in historical searching
bindkey -M vicmd '^p' history-search-backward
bindkey -M vicmd '^n' history-search-forward
bindkey -M viins '^p' history-search-backward
bindkey -M viins '^n' history-search-forward

# Edit commands in preferred text editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'n' edit-command-line

# For aliases
source "$XDG_CONFIG_HOME/zsh/aliases.zsh"

# For fzf
source <(fzf --zsh)

# For zoxide
eval "$(zoxide init --cmd cd zsh)"

# For prompt
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/omp.toml)"

# For zsh syntax highlighting (keep this at the very bottom of .zshrc)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
