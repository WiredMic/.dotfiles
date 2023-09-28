#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

mkdir -p ~/.config/git
stow --target=/home/$(whoami)/.config/git git


mkdir -p ~/.config/nvim/
git clone https://github.com/NvChad/NvChad.git ~/.config/nvim/
mkdir -p ~/.config/nvim/lua/custom/
stow --target=/home/$(whoami)/.config/nvim/lua/custom neovim_chad_custom

mkdir -p ~/.config/hypr
stow --target=/home/$(whoami)/.config/hypr hypr

mkdir -p ~/.config/kitty
stow --target=/home/$(whoami)/.config/kitty kitty

mkdir -p ~/.config/wal
stow --target=/home/$(whoami)/.config/wal wal

mkdir -p ~/.config/waybar
stow --target=/home/$(whoami)/.config/waybar waybar

mkdir -p ~/.local/share/cows
stow --target=/home/$(whoami)/.local/share/cows cowsay

stow --target=/home/$(whoami) zsh_initfile

mkdir -p ~/.config/zsh
stow --target=/home/$(whoami)/.config/zsh zsh
echo "Type password to change shell to ZSH"
chsh -s $(which zsh)

