if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
fi


if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
fi


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
          zsh-syntax-highlighting 
        )

export ZSH=$HOME/.oh-my-zsh
if [[ `uname` == 'Darwin' ]]; 
then
    echo "Loading envconfig for macOS!!"
    source ~/.config/zsh/env_macos.zsh
    echo "Done!!"
elif [[ `uname` == 'Linux' ]];
then
    echo "Loading envconfig for Linux!!"
    source ~/.config/zsh/env_linux.zsh
    echo "Done!!"
fi

source ~/.config/zsh/alias.zsh
source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
