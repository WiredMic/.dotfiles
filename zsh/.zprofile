#                       __ _ _      
#  _____ __  _ __ ___  / _(_) | ___ 
# |_  / '_ \| '__/ _ \| |_| | |/ _ \
#  / /| |_) | | | (_) |  _| | |  __/
# /___| .__/|_|  \___/|_| |_|_|\___|
#     |_|  
# by: Rasmus Enevoldsen (2023)
# --------------------------------------------------

# XDG

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"


export ZDOTDIR=$HOME/.config/zsh

export PAGER="most"
export CALIBRE_USE_DARK_PALETTE=1
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export TERM="kitty"


# remove files form $HOME

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export COWPATH=$XDG_DATA_HOME/cows
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
# export WGETRC="XDG_CONFIG_HOME"/wget/wgetrc
export KODI_DATA="$XDG_DATA_HOME/kodi"
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var

export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

export DBX_CONTAINER_MANAGER="podman"

export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_THEME=Dracula
# qt
export QT_QPA_PLATFORMTHEME="qt6ct"

#PATH
PATH="/home/$(whoami)/.local/share/cargo/bin:$PATH"
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
