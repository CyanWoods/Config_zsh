## alias of apps
alias c="clear"
alias nf="neofetch"
alias ra="ranger"
alias lg="lazygit"
alias steam="/Applications/Steam.app/Contents/MacOS/steam_osx -dev"
alias gcc="gcc-11"
alias post="hugo && Gauto"
alias y="yay -Syyu"
## alias of zsh
alias edzsh="vim ~/.zshrc"
alias edzshenv="vim ~/.config/zsh/env.zsh"
alias edzshali="vim ~/.config/zsh/alias.zsh"
alias rezsh="source ~/.zshrc"

## Brew related
# alias bu="brew update"
# alias buu="brew upgrade"
# alias buug="brew upgrade --greedy"
# alias bs="brew cleanup && brew cleanup -s"
# alias bi="brew install"
# alias bo="brew outdated"
# alias bl="brew list"

## Github Repo 
alias Gauto="git add . && git commit -m "." && git push"

alias Gb="cd ~/Github/Blog && git pull -r"
alias Gccp="cd ~/Github/Conquer_C_Pointer && git pull -r"
alias Gls="cd ~/Github/LeetCode_Solution && git pull -r"
alias Gmjc="cd ~/Github/MingJie_C_Mid && git pull -r"
alias Gn="cd ~/Github/A_Note && git pull -r"
alias Gp="cd ~/Github/Projects && git pull -r"
alias Gpcc="cd ~/Github/Pro_CUDA_C && git pull -r"
alias Gv="cd ~/Github/Vim_Pra && git pull -r"

## some shrotcuts
alias insp="/usr/bin/ssh  -T -f -N -g -R :25565:127.0.0.1:22 cyanwoods@cyanwoods.com" 
alias pro="export http_proxy=http://127.0.0.1:7892 export https_proxy=http://127.0.0.1:7892 export ALL_PROXY=socks5://127.0.0.1:7891"
alias rjon="sudo screen -R rj /opt/rjsupplicant/rjsupplicant.sh"
alias eap="sudo screen -R minieap minieap -u 202022172013130 -p 02080017 -n enp59s0 --fake-dns2 202.196.64.1  --module printer --module rjv3 -e 20 --module printer --if-impl sockraw --service default"
alias Nmgr="sudo systemctl start NetworkManager"
alias qqq="Nmgr&&insp"


#alias 
alias post="hugo && Gauto"

## to execute
alias a="~/a"
