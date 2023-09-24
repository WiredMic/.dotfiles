#!/bin/bash
#      _                  _       _ _   
#  ___| |_ _____      __ (_)_ __ (_) |_ 
# / __| __/ _ \ \ /\ / / | | '_ \| | __|
# \__ \ || (_) \ V  V /  | | | | | | |_ 
# |___/\__\___/ \_/\_/   |_|_| |_|_|\__|
# --------------------------------------
# by Rasmus Enevoldsen (2023)
# -------------------------------------

stow --verbose --target=/home/wiredmic --restow git
stow --verbose --target=/home/wiredmic neovim_chad_custom
stow  --verbose --target=/home/wiredmic --restow hypr
stow --verbose --target=/home/wiredmic --restow kitty
stow --verbose --target=/home/wiredmic --restow wal 
stow --verbose --target=/home/wiredmic --restow waybar
stow --verbose --target=/home/wiredmic --restow zsh
