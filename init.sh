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
# fonts: jetbrainsmono nerd font
# ---------------------------

mkdir -p ~/.local/share/fonts/JetBrainsMono/

cd ~/Downloads/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip

mv ~/Downloads/JetBrainsMono.zip ~/.local/share/fonts/JetBrainsMono/

cd ~/.local/share/fonts/JetBrainsMono/

unzip JetBrainsMono.zip

rm JetBrainsMono.zip

fc-cache -f -v

# ---------------------------
# Hyprland
# ---------------------------

mkdir -p ~/.config/hypr/

ln -s ~/.dotfiles/hypr/* ~/.config/hypr/

# ---------------------------
# zsh
# ---------------------------

mkdir ~/.config/zsh/

ln -s ~/.dotfiles/zsh/* ~/.config/zsh/
ln -s ~/.dotfiles/zsh/.* ~/.config/zsh/

# ---------------------------
# git
# ---------------------------

ln -s ~/.dotfiles/git/* ~/.config/git/

# ---------------------------
# neovim
# ---------------------------

# neovim is special because I use a preconfigured setup.

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

mkdir -p ~/.config/nvim/lua/custom/

ln -s ~/.dotfiles/neovim_chad_custom/* ~/.config/nvim/lua/custom/
ln -s ~/.dotfiles/neovim_chad_custom/.* ~/.config/nvim/lua/custom/


# ---------------------------
# wallpaper & pywal
# ---------------------------

# download pywal

ln -s ~/.dotfiles/wal/templates/* ~/.config/wal/


# ---------------------------
# waybar
# ---------------------------

mkdir ~/.config/waybar

ln -s ~/.dotfiles/waybar/* ~/.config/waybar/ 
