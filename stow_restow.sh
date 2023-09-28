#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

stow --target=/home/$(whoami)/.config/git git
stow --verbose --target=/home/$(whoami)/.config/nvim/lua/custom --restow neovim_chad_custom
stow --verbose --target=/home/$(whoami)/.config/hypr --restow hypr
stow --verbose --target=/home/$(whoami)/.config/kitty --restow kitty
stow --verbose --target=/home/$(whoami)/.config/wal --restow wal
stow --verbose --target=/home/$(whoami)/.config/waybar --restow waybar
stow --verbose --target=/home/$(whoami)/.local/share/cows --restow cowsay
stow ---verbose -target=/home/$(whoami) zsh_initfile
stow ---verbose -target=/home/$(whoami)/.config/zsh --restow zsh
