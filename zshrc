if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_UPDATE_PROMPT="true"

COMPLETION_WAITING_DOTS="true"

plugins=( brew
          archlinux
          git 
          sudo 
          safe-paste
          colored-man-pages
          extract
          zsh-autosuggestions
          zsh-completions
          zsh-syntax-highlighting 
        )

export ZSH=$HOME/.oh-my-zsh

source $HOME/.config/zsh/alias/alias_common.zsh

if [[ `uname` == 'Darwin' ]]; 
then
    source $HOME/.config/zsh/env/env_macos.zsh
    source $HOME/.config/zsh/alias/alias_macos.zsh
    . "/Users/cyanwoods/.acme.sh/acme.sh.env"

elif [[ `uname` == 'Linux' ]];
then

  if [[ `grep 'Arch Linux' /etc/os-release | wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/env/env_archlinux.zsh
    source $HOME/.config/zsh/alias/alias_archlinux.zsh


  elif [[ `grep 'Ubuntu' /etc/os-release | wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_ubuntu.zsh


  elif [[ `grep 'CentOS' /etc/os-release | wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_rhel.zsh


  elif [[ `grep 'Rocky Linux' /etc/os-release | wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_rhel.zsh


  elif [[ `grep 'Debian' /etc/os-release | wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_debian.zsh

  fi
fi

source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
