#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

rm -rf $HOME/.config/git
mkdir -p $HOME/.config/git
stow --target=/home/$(whoami)/.config/git git


rm -rf $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/
git clone https://github.com/NvChad/NvChad.git ~/.config/nvim/
mkdir -p $HOME/.config/nvim/lua/custom/
stow --target=/home/$(whoami)/.config/nvim/lua/custom neovim_chad_custom

rm -rf $HOME/.config/hypr
mkdir -p $HOME/.config/hypr
stow --target=/home/$(whoami)/.config/hypr hypr

rm -rf $HOME/.config/kitty
mkdir -p $HOME/.config/kitty
stow --target=/home/$(whoami)/.config/kitty kitty

rm -rf $HOME/.config/wal
mkdir -p $HOME/.config/wal
stow --target=/home/$(whoami)/.config/wal wal

rm -rf $HOME/.config/waybar
mkdir -p $HOME/.config/waybar
stow --target=/home/$(whoami)/.config/waybar waybar

rm -rf $HOME/.local/share/cows
mkdir -p ~/.local/share/cows
stow --target=/home/$(whoami)/.local/share/cows cowsay

rm -rf $HOME/.config/distrobox
mkdir -p $HOME/.config/distrobox
stow --target=/home/$(whoami)/.config/distrobox distrobox

rm -rf $HOME/.zshenv 
stow --target=/home/$(whoami) zsh_initfile

rm -rf $HOME/.config/zsh
mkdir -p ~/.config/zsh
stow --target=/home/$(whoami)/.config/zsh zsh
echo "Type password to change shell to ZSH"
chsh -s $(/bin/zsh)

