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


# test internet and get newest version of NvChad
wget -q --spider https://google.com

if [ $? -eq 0 ]; then   
  echo "online"
  rm -rf ./NvChad
  mkdir ./NvChad
  git clone https://github.com/NvChad/NvChad.git ./NvChad/
  rm -rf ./NvChad/.git ./NvChad/.github ./NvChad/.ignore ./NvChad/.gitignore  

fi

rm -rf $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/

cp -r ./NvChad/. $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/lua/custom/
stow --target=/home/$(whoami)/.config/nvim/lua/custom neovim_chad_custom

# test if neovim is in flatpak 
if flatpak list | grep "test"; then
  rm -rf $HOME/.var/app/io.neovim.nvim/data/nvim/
  mkdir -p $HOME/.var/app/io.neovim.nvim/data/nvim/

  cp -r ./NvChad/. $HOME/.var/app/io.neovim.nvim/data/nvim/
  mkdir -p $HOME/.var/app/io.neovim.nvim/config/lua/data/nvim/
  stow --target=/home/$(whoami)/.var/app/io.neovim.nvim/config/lua/data/nvim/ neovim_chad_custom
fi

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

