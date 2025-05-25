# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


## Word Traversing and Deleting
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word


## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## Change directory to specifics
alias comprog='cd /mnt/c/Users/ASUS/Documents/CompProg/'
# alias ctf='cd /mnt/c/Users/ASUS/Documents/CTF'
# alias daspro='cd /mnt/c/Users/ASUS/Documents/Daspro/'
alias programming='cd /mnt/c/Users/ASUS/Documents/Programming/'
alias pmp='cd /mnt/c/Users/ASUS/Documents/Akademik/SEM4/PMP-EL2008/'
alias akademik='cd /mnt/c/Users/ASUS/Documents/Akademik/'
alias vlg='cd /mnt/c/Users/ASUS/Documents/vlg/'

alias kys='echo you should know your self'

## Alias cls as clear
alias cls='clear'

[ -f "/home/vicosilalahi/.ghcup/env" ] && source "/home/vicosilalahi/.ghcup/env" # ghcup-env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export DISPLAY=localhost:0.0
