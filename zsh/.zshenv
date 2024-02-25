#          _                     
#  _______| |__   ___ _ ____   __
# |_  / __| '_ \ / _ \ '_ \ \ / /
#  / /\__ \ | | |  __/ | | \ V / 
# /___|___/_| |_|\___|_| |_|\_/ 
# by: Rasmus Enevoldsen (2023)
# --------------------------------------------------
#
#

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"; 
gpg-connect-agent updatestartuptty /bye > /dev/null # help pgp find user tty for password prompts

