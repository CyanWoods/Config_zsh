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
    echo Hello macOS
    source $HOME/.config/zsh/env/env_macos.zsh
    source $HOME/.config/zsh/alias/alias_macos.zsh
    echo Finish

elif [[ `uname` == 'Linux' ]];
then

  if [[ `neofetch |grep 'Arch Linux' |wc -l` != 0 ]];
  then
    echo Hello Arch Linux
    source $HOME/.config/zsh/env/env_archlinux.zsh
    source $HOME/.config/zsh/alias/alias_archlinux.zsh
    echo Finish

  elif [[ `neofetch |grep Ubuntu |wc -l` != 0 ]];
  then
    echo Hello Ubuntu
    source $HOME/.config/zsh/alias/alias_ubuntu.zsh
    echo Finish

  elif [[ `neofetch |grep 'CentOS' |wc -l` != 0 ]];
  then
    echo Hello CentOS
    source $HOME/.config/zsh/alias/alias_rhel.zsh
    echo Finish


  elif [[ `neofetch |grep 'Rocky Linux' |wc -l` != 0 ]];
  then
    echo Hello Rocky Linux
    source $HOME/.config/zsh/alias/alias_rhel.zsh
    echo Finish


  elif [[ `neofetch |grep 'Debian'|wc -l` != 0 ]];
  then
    echo Hello Debian
    source $HOME/.config/zsh/alias/alias_debian.zsh
    echo Finish

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
