#                  __                     
#                 /\ \                    
#    ____     ____\ \ \___   _ __   ___   
#   /\_ ,`\  /',__\\ \  _ `\/\`'__\/'___\ 
# __\/_/  /_/\__, `\\ \ \ \ \ \ \//\ \__/ 
#/\_\ /\____\/\____/ \ \_\ \_\ \_\\ \____\
#\/_/ \/____/\/___/   \/_/\/_/\/_/ \/____/
#
#load oh-my-zsh
export ZSH=/usr/share/oh-my-zsh
export LAMBDA_MOD_N_DIR_LEVELS=5
export PATH="$HOME/.local/bin:$PATH"
export GPG_TTY=$(tty)
export EDITOR="nvim" 
export MANPAGER="nvim +Man!"
autoload -U colors && colors
#is overwritten by oh-my-zsh
PROMPT="%B%n@%M [ %~ ] 
> "
#"%B%{%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[red]%} [ %{$fg[magenta]%}%~ %{$fg[red]%}]%{$reset_color%}%b% 
#> "
ZSH_THEME="candy_mod"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#PLUGINS
plugins=(git zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=14"
alias wpp="/home/lukas/scripts/bash/wpp"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#aliases
alias icat='kitty icat'
alias vim='nvim'
alias dgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias ugit='/usr/bin/git --git-dir=$HOME/Documents/.uni --work-tree=$HOME/Documents' 
alias down='systemctl suspend'
alias vpn='sudo openvpn /etc/openvpn/client/client.ovpn'
alias btt='cat /sys/class/power_supply/BAT0/capacity'
alias banner='$HOME/scripts/bash/palette.sh'
alias gtp='gotop -c minimal'
alias rpush='rsync -urvhP /home/lukas/Documents/share pi@rpi4.local:/home/pi/'
alias rpull='rsync -urvhP pi@rpi4.local:/home/pi/share /home/lukas/Documents/'

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
alias l='exa -s type'
alias la='exa -las type'
