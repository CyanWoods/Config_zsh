## common alias 
alias c="clear"
alias nf="neofetch"
alias ra="ranger"
alias lg="lazygit"
alias post="hugo && Gauto"

## alias of zsh
alias edzsh="vim ~/.zshrc"
alias edzshenv="vim ~/.config/zsh/env.zsh"
alias edzshali="vim ~/.config/zsh/alias.zsh"
alias rezsh="source ~/.zshrc"

## Github Repo 
alias Gauto="git add . && git commit -m "." && git push"
alias Gb="cd ~/Github/A_Blog && gpr"
alias Gp="cd ~/Github/A_Projects && gpr"
alias Gn="cd ~/Github/A_Note && gpr"


if [[ `uname` == 'Darwin' ]]; 
then
    ## alias of apps
    alias steam="/Applications/Steam.app/Contents/MacOS/steam_osx -dev"
    alias gcc="gcc-11"


    ## Brew related
    alias bu="brew update"
    alias buug="brew upgrade --greedy --force"
    alias bs="brew cleanup && brew cleanup -s"
    alias bo="brew outdated"
    alias bl="brew list"

    ## some shrotcuts
    alias insp="ssh -p 25565 cyanwoods@cyanwoods.com"

    ## Yubikey
    alias ce="gpg --card-edit"
    alias ctag="/usr/bin/ctags"

    # vm
    alias vm81="ssh root@192.168.247.164"
    alias vm82="ssh root@192.168.247.165"
    alias vm71="ssh root@192.168.247.166"
    alias vm72="ssh root@192.168.247.167"

    # clash config 
    alias clashcfg="sh /Users/cyanwoods/Scripts/clash_ruleset.sh"

    
elif [[ `uname` == 'Linux' ]];
then
    source ~/.config/zsh/env_linux.zsh
    source ~/.config/zsh/alias_linux.zsh
    ## some shrotcuts
    alias insp="/usr/bin/ssh  -T -f -N -g -R :25565:127.0.0.1:22 cyanwoods@cyanwoods.com" 
    alias pro="export http_proxy=http://127.0.0.1:7892 export https_proxy=http://127.0.0.1:7892 export ALL_PROXY=socks5://127.0.0.1:7891"
    alias eap="sudo screen -R minieap minieap -u 202022172013130 -p 02080017 -n enp59s0 --fake-dns2 202.196.64.1  --module printer --module rjv3 -e 20 --module printer --if-impl sockraw --service default"
    alias Nmgr="sudo systemctl start NetworkManager"
    alias qqq="Nmgr&&insp"
fi








