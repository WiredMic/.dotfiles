#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

stow --verbose --restow --target=/home/$(whoami)/.config/git git
stow --verbose --restow --target=/home/$(whoami)/.config/nvim/lua/custom neovim_chad_custom
stow --verbose --restow --target=/home/$(whoami)/.config/hypr hypr
stow --verbose --restow --target=/home/$(whoami)/.config/kitty kitty
stow --verbose --restow --target=/home/$(whoami)/.config/wal wal
stow --verbose --restow --target=/home/$(whoami)/.config/waybar waybar
stow --verbose --restow --target=/home/$(whoami)/.local/share/cows cowsay
stow --verbose --restow --target=/home/$(whoami)/.config/distrobox distrobox
stow --verbose --restow --target=/home/$(whoami) zsh_initfile
stow --verbose --restow --target=/home/$(whoami)/.config/zsh zsh
