## common alias 
alias c="clear"
alias nf="neofetch"
alias ra="ranger"
alias lg="lazygit"
alias post="hugo && Gauto"

## alias of zsh
alias edzsh="vim ~/.zshrc"
alias edzshali="vim ~/.config/zsh/alias.zsh"
alias rezsh="source ~/.zshrc"

## Github Repo 
alias Gauto="git add . && git commit -m "." && git push"
alias Gb="cd ~/Github/A_Blog && gpr"
alias Gp="cd ~/Github/A_Projects && gpr"
alias Gn="cd ~/Github/A_Note && gpr"


if [[ `uname` == 'Darwin' ]]; 
then
    alias edzshenv="vim ~/.config/zsh/env_macos.zsh"
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

    # export clash config 
    alias clashcfg="sh /Users/cyanwoods/Scripts/clash_ruleset.sh"

    #use
    alias pro="export https_proxy=http://127.0.0.1:6152 export http_proxy=http://127.0.0.1:6152 export all_proxy=socks5://127.0.0.1:6153"

    # default java version
    alias djava8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
    alias djava11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
    alias djava17="export JAVA_HOME=$(/usr/libexec/java_home -v 17)"
    alias djava18="export JAVA_HOME=$(/usr/libexec/java_home -v 18)"


    
elif [[ `uname` == 'Linux' ]];
then
    echo hello Linux
    if [[ `cat /proc/version |grep arch |wc -l` == 1 ]];
    then
        ## some shrotcuts
        alias edzshenv="vim ~/.config/zsh/env_linux.zsh"
        alias insp="/usr/bin/ssh  -T -f -N -g -R :25565:127.0.0.1:22 cyanwoods@cyanwoods.com" 
        alias pro="export http_proxy=http://127.0.0.1:7892 export https_proxy=http://127.0.0.1:7892 export ALL_PROXY=socks5://127.0.0.1:7891"
        alias y="yay -Syyu"

        # default java version
        alias djava8="sudo archlinux-java set java-8-openjdk"
        alias djava11="sudo archlinux-java set java-11-openjdk"
        alias djava17="sudo archlinux-java set java-17-openjdk"
    
    elif [[ `cat /proc/version |grep ubuntu |wc -l` == 1 ]];
    then 
        echo hello Ubuntu
        alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
        alias mc="/etc/init.d/minecraft"
    else
    fi  
else
fi

