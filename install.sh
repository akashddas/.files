#!/bin/bash

########
# nvim #
########
rm -rf "$XDG_CONFIG_HOME/nvim"
ln -s "$DOTFILES/nvim" "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"

#######
# X11 #
#######
rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

#######
# zsh #
#######
mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases.zsh" "$XDG_CONFIG_HOME/zsh/aliases.zsh"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"
# For fzf-tab plugin
[ ! -d "$HOME/.zsh/plugins/fzf_tab" ] &&
  echo "Could not find fzf-tab..." &&
  echo "Installing fzf-tab..." &&
  git clone https://github.com/Aloxaf/fzf-tab \
    "$HOME/.zsh/plugins/fzf_tab" &&
  [ ! -d "$HOME/.zsh/plugins/fzf_tab/fzf-tab.plugin.zsh" ] &&
  rm -rf "$HOME/.zsh/plugins/fzf_tab/fzf-tab.plugin.zsh"
# For zsh-completions plugin
[ ! -d "$HOME/.zsh/plugins/zsh_completions" ] &&
  echo "Could not find zsh-completions..." &&
  echo "Installing zsh-completions..." &&
  rm -rf "$HOME/.zsh/plugins/zsh-completions" &&
  git clone https://github.com/zsh-users/zsh-completions.git \
    "$HOME/.zsh/plugins/zsh_completions/"
#########
# fonts #
#########
mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$HOME/.local/share/"

############
# ohmyposh #
############
mkdir -p "$XDG_CONFIG_HOME/ohmyposh"
ln -sf "$DOTFILES/ohmyposh/omp.toml" "$XDG_CONFIG_HOME/ohmyposh/omp.toml"

#############
# alacritty #
#############
rm -rf "$XDG_CONFIG_HOME/alacritty"
ln -s "$DOTFILES/alacritty" "$XDG_CONFIG_HOME"

##########
# xremap #
##########
mkdir -p "$XDG_CONFIG_HOME/xremap"
ln -sf "$DOTFILES/xremap/xremap.yml" "$XDG_CONFIG_HOME/xremap/xremap.yml"

########
# rofi #
########
rm -rf "$XDG_CONFIG_HOME/rofi"
mkdir "$XDG_CONFIG_HOME/rofi"
ln -sf "$DOTFILES/rofi/config.rasi" "$XDG_CONFIG_HOME/rofi/config.rasi"
ln -sf "$DOTFILES/rofi/venus.rasi" "$XDG_CONFIG_HOME/rofi/venus.rasi"

########
# tmux #
########
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"
# Install tpm
[ ! -d "$HOME/.tmux/plugins/tpm" ] &&
  echo "Could not find tmux-plugin-manager" &&
  echo "Installing tmux-plugin-manager..." &&
  git clone https://github.com/tmux-plugins/tpm \
    "$HOME/.tmux/plugins/tpm"

################
# rofi-scripts #
################
[ ! -d "$HOMEBIN/rofi" ] &&
  mkdir "$HOMEBIN/rofi" &&
  ln "$DOTFILES/rofi/scripts/rofi-wifi-menu.sh" \
    "$HOMEBIN/rofi/rofi-wifi-menu" &&
  ln "$DOTFILES/rofi/scripts/rofi-power-menu.sh" \
    "$HOMEBIN/rofi/rofi-power-menu"
[ ! -f "$HOMEBIN/rofi/greenclip" ] &&
  echo "Could not find greenclip..." &&
  echo "Installing greenclip..." &&
  wget -P "$HOMEBIN/rofi" \
    https://github.com/erebe/greenclip/releases/download/v4.2/greenclip &&
  chmod u+x $HOMEBIN/rofi/greenclip

#############
# greenclip #
#############
rm -rf "$XDG_CONFIG_HOME/greenclip.toml" &&
  ln -sf "$DOTFILES/greenclip/greenclip.toml" \
    "$XDG_CONFIG_HOME/greenclip.toml"

echo "All set, you are ready to go!"
