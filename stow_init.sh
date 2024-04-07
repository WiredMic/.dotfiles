#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

rm -rf $XDG_CONFIG_HOME/git
mkdir -p $XDG_CONFIG_HOME/git
stow --target=/home/$(whoami)/.config/git git


# test internet and get newest version of NvChad
wget -q --spider https://google.com

if [ $? -eq 0 ]; then   
  echo "online"
  rm -rf ./NvChad
  mkdir ./NvChad
  git clone https://github.com/NvChad/NvChad.git ./NvChad/
  rm -rf ./NvChad/.git ./NvChad/.github ./NvChad/.ignore ./NvChad/.gitignore  

fi

rm -rf $XDG_CONFIG_HOME/nvim
mkdir -p $XDG_CONFIG_HOME/nvim/

cp -r ./NvChad/. $XDG_CONFIG_HOME/nvim
mkdir -p $XDG_CONFIG_HOME/nvim/lua/custom/
stow --target=/home/$(whoami)/.config/nvim/lua/custom neovim_chad_custom

# test if neovim is in flatpak 
if flatpak list | grep "test"; then
  rm -rf $HOME/.var/app/io.neovim.nvim/data/nvim/
  mkdir -p $HOME/.var/app/io.neovim.nvim/data/nvim/

  cp -r ./NvChad/. $HOME/.var/app/io.neovim.nvim/data/nvim/
  mkdir -p $HOME/.var/app/io.neovim.nvim/config/lua/data/nvim/
  stow --target=/home/$(whoami)/.var/app/io.neovim.nvim/config/lua/data/nvim/ neovim_chad_custom
fi

rm -rf $XDG_CONFIG_HOME/hypr
mkdir -p $XDG_CONFIG_HOME/hypr
stow --target=/home/$(whoami)/.config/hypr hypr

rm -rf $XDG_CONFIG_HOME/kitty
mkdir -p $XDG_CONFIG_HOME/kitty
stow --target=/home/$(whoami)/.config/kitty kitty

rm -rf $XDG_CONFIG_HOME/wal
mkdir -p $XDG_CONFIG_HOME/wal
stow --target=/home/$(whoami)/.config/wal wal

rm -rf $XDG_CONFIG_HOME/waybar
mkdir -p $XDG_CONFIG_HOME/waybar
stow --target=/home/$(whoami)/.config/waybar waybar

rm -rf $XDG_CONFIG_HOME/wlogout
mkdir -p $XDG_CONFIG_HOME/wlogout
stow --target=/home/$(whoami)/.config/wlogout wlogout

rm -rf $HOME/.local/share/cows
mkdir -p ~/.local/share/cows
stow --target=/home/$(whoami)/.local/share/cows cowsay

rm -rf $XDG_CONFIG_HOME/distrobox
mkdir -p $XDG_CONFIG_HOME/distrobox
stow --target=/home/$(whoami)/.config/distrobox distrobox

rm -rf $HOME/.zshenv 
stow --target=/home/$(whoami) zsh_initfile

rm -rf $XDG_CONFIG_HOME/zsh
mkdir -p $XDG_CONFIG_HOME/zsh
mkdir -p $XDG_CACHE_HOME/zsh
touch $XDG_CACHE_HOME/zsh/histfile
stow --target=/home/$(whoami)/.config/zsh zsh
echo "Type password to change shell to ZSH"
chsh -s $(/bin/zsh)

rm -rf $XDG_CONFIG_HOME/environment.d/
mkdir -p $XDG_CONFIG_HOME/environment.d/
stow --target=/home/$(whoami)/.config/environment.d systemd-env


git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
# ~/.config/emacs/bin/doom install
rm -rf $XDG_CONFIG_HOME/doom/
mkdir -p $XDG_CONFIG_HOME/doom
stow --target=/home/$(whoami)/.config/doom doom-emacs

