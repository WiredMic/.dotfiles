#          _                     
#  _______| |__   ___ _ ____   __
# |_  / __| '_ \ / _ \ '_ \ \ / /
#  / /\__ \ | | |  __/ | | \ V / 
# /___|___/_| |_|\___|_| |_|\_/ 
# by: Rasmus Enevoldsen (2023)
# --------------------------------------------------
#
#

export GPG_AGENT_INFO=$GNUPGHOME/S.gpg-agent:42:1
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"; 
gpg-connect-agent updatestartuptty /bye > /dev/null # help pgp find user tty for password prompts

export PATH="/home/rasmus/.local/share/executable:$PATH"
export PATH="/home/rasmus/.config/emacs/bin:$PATH"
