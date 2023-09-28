#          _                     
#  _______| |__   ___ _ ____   __
# |_  / __| '_ \ / _ \ '_ \ \ / /
#  / /\__ \ | | |  __/ | | \ V / 
# /___|___/_| |_|\___|_| |_|\_/ 
# by: Rasmus Enevoldsen (2023)
# --------------------------------------------------
#
#

export ZDOTDIR=$HOME/.config/zsh


# XDG

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Export

export PAGER="most"
export CALIBRE_USE_DARK_PALETTE=1
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export COWPATH=$XDG_DATA_HOME/cows

# remove files form $HOME

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc 
export GTK_THEME=Dracula
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket


# export QT_STYLE_OVERRIDE=kvantum
# export QT_QPA_PLATFORMTHEME=gtk2





