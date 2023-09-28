#!/bin/bash
#  ___           _        _ _  
# |_ _|_ __  ___| |_ __ _| | | 
#  | || '_ \/ __| __/ _` | | | 
#  | || | | \__ \ || (_| | | | 
# |___|_| |_|___/\__\__,_|_|_| 
#                              
# by Rasmus Enevoldsen (2023) 
# ----------------------------------------------------- 
# Install Script for required packages
# ------------------------------------------------------

# ----------------------------------------------------- 
# Install Script for required packages
# ------------------------------------------------------
source $(dirname "$0")/scripts/library.sh
clear
echo "  ___           _        _ _  "
echo " |_ _|_ __  ___| |_ __ _| | | "
echo "  | ||  _ \/ __| __/ _  | | | "
echo "  | || | | \__ \ || (_| | | | "
echo " |___|_| |_|___/\__\__,_|_|_| "
echo "                              "
echo "by Rasmus Enevoldsen (2023)"
echo "-------------------------------------"
echo ""

# ---------------------
# Check if Paru is installed
# ---------------------
if sudo pacman -Qs paru > /dev/null ; then
	echo "Paru is installed"
else 
	echo "Paru is not installed. Will be installed now!"
	sudo pacman -S --needed base-devel
	git clone https://aur.archlinux.org/paru.git ~/paru-git
	cd ~/paru-git
	makepkg -si
	rmdir ~/paru-git
	cd ~/.dotfiles/
	clear
	echo "  ___           _        _ _  "
	echo " |_ _|_ __  ___| |_ __ _| | | "
	echo "  | ||  _ \/ __| __/ _  | | | "
	echo "  | || | | \__ \ || (_| | | | "
	echo " |___|_| |_|___/\__\__,_|_|_| "
	echo "                              "
	echo "by Rasmus Enevoldsen (2023)"
	echo "-------------------------------------"
	echo ""
fi

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

while true; do
    read -p "DO YOU WANT TO START THE INSTALLATION NOW? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo "Installation started."
        break;;
        [Nn]* ) 
            exit;
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# ------------------------------------------------------
# Install required packages
# ------------------------------------------------------
echo ""
echo "-> Install main packages"

packagesPacman=(
    "pacman-contrib"
    "kitty" 
    "wofi"
    "waybar"
    "firefox" 
    "neovim" 
    "ttf-jetbrains-mono-nerd"
    "figlet" 
    "breeze" 
    "breeze-gtk" 
    "vlc" 
    "eza" 
    "xdg-desktop-portal-gtk" 
    "tumbler" 
    "blueman"
    "zsh"
    "libnotify"
    "cowsay"
    "lolcat"
);

packagesYay=(
);
  
# ------------------------------------------------------
# Install required packages
# ------------------------------------------------------
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";

