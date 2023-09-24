#!/bin/bash
#  _       _ _          _       _    __ _ _           
# (_)_ __ (_) |_     __| | ___ | |_ / _(_) | ___  ___ 
# | | '_ \| | __|   / _` |/ _ \| __| |_| | |/ _ \/ __|
# | | | | | | |_   | (_| | (_) | |_|  _| | |  __/\__ \
# |_|_| |_|_|\__| (_)__,_|\___/ \__|_| |_|_|\___||___/
# by Rasmus Enevoldsen
# ----------------------------------------------------
# This is a script to symlink all the dotfiles into the correct places.

# ---------------------------
# fonts
# ---------------------------



# ---------------------------
# neovim
# ---------------------------

# neovim is special because I use a preconfigured setup.

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

mkdir ~/.config/nvim/lua/custom/

ln -s ~/.dotfiles/neovim_chad_custom/* ~/.config/nvim/lua/custom/
ln -s ~/.dotfiles/neovim_chad_custom/.* ~/.config/nvim/lua/custom/


