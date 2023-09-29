#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

rm -rf ~/.config/git
mkdir -p ~/.config/git
stow --target=/home/$(whoami)/.config/git git


rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim/
git clone https://github.com/NvChad/NvChad.git ~/.config/nvim/
mkdir -p ~/.config/nvim/lua/custom/
stow --target=/home/$(whoami)/.config/nvim/lua/custom neovim_chad_custom

rm -rf ~/.config/hypr
mkdir -p ~/.config/hypr
stow --target=/home/$(whoami)/.config/hypr hypr

rm -rf ~/.config/kitty
mkdir -p ~/.config/kitty
stow --target=/home/$(whoami)/.config/kitty kitty

rm -rf ~/.config/wal
mkdir -p ~/.config/wal
stow --target=/home/$(whoami)/.config/wal wal

rm -rf ~/.config/waybar
mkdir -p ~/.config/waybar
stow --target=/home/$(whoami)/.config/waybar waybar

rm -rf ~/.local/share/cows
mkdir -p ~/.local/share/cows
stow --target=/home/$(whoami)/.local/share/cows cowsay

stow --target=/home/$(whoami) zsh_initfile

rm -rf ~/.config/zsh
mkdir -p ~/.config/zsh
stow --target=/home/$(whoami)/.config/zsh zsh
echo "Type password to change shell to ZSH"
chsh -s $(which zsh)

