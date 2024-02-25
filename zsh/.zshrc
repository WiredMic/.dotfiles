#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
# by: Rasmus Enevoldsen (2023)
# --------------------------------------------------


source $ZDOTDIR/sweet_sentences.sh
# gpg-connect-agent updatestartuptty /bye > /dev/null # help pgp find user tty for password prompts

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Split up Zsh files
source $ZDOTDIR/.zshenv
source $ZDOTDIR/.zshalias
source $ZDOTDIR/.zshkeybind

HISTFILE=$XDG_CACHE_HOME/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -U compinit && compinit

setopt beep notify
bindkey -v


autoload -Uz compinit
compinit


# themes/plugins
source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-you-should-use/you-should-use.plugin.zsh
source $ZDOTDIR/plugins/auto-notify/auto-notify.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh ]]

