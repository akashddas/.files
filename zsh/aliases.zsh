# Use <C-x>a to expand aliases

alias c="clear"

alias bb="cd .."

alias vi="nvim"

alias ls="ls --color"
alias ll="ls -lah --color"
alias lt="tree -L"
alias tree="tree -a"

alias xx="exit"

# For git commands
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias gp="git push"

# For configuration editors
alias va="$EDITOR $XDG_CONFIG_HOME/alacritty/alacritty.toml"
alias vn="$EDITOR $XDG_CONFIG_HOME/nvim/"
alias vs="$EDITOR $DOTFILES/install.sh"
alias vo="$EDITOR $XDG_CONFIG_HOME/ohmyposh/omp.toml"
alias vr="$EDITOR $XDG_CONFIG_HOME/rofi/config.rasi"
alias vt="$EDITOR $XDG_CONFIG_HOME/tmux/tmux.conf"
# alias vx="$EDITOR $XDG_CONFIG_HOME/X11/.Xresources"
alias vx="$EDITOR $XDG_CONFIG_HOME/xremap/xremap.yml"
alias vz="$EDITOR $DOTFILES/zsh/"  # zsh config all in one place

# Access scratchpad
alias sp="$EDITOR $HOME/scratchpad"

alias sai="sudo apt install"
alias aaa="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

# For powerline icons in tmux
alias tmux="tmux -u"
alias grep="grep -i --color"
