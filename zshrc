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

elif [[ `uname` == 'Linux' ]];
then

  if [[ `cat /etc/os-release |grep 'Arch Linux' |wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/env/env_archlinux.zsh
    source $HOME/.config/zsh/alias/alias_archlinux.zsh

  elif [[ `cat /etc/os-release |grep Ubuntu |wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_ubuntu.zsh

  elif [[ `cat /etc/os-release |grep 'CentOS' |wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_rhel.zsh


  elif [[ `cat /etc/os-release |grep 'Rocky Linux' |wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_rhel.zsh


  elif [[ `cat /etc/os-release |grep 'Debian'|wc -l` != 0 ]];
  then
    source $HOME/.config/zsh/alias/alias_debian.zsh

  fi
fi

source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
