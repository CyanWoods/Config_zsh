alias edzshali="vim ~/.config/zsh/alias/alias_macos.zsh"
alias edzshenv="vim ~/.config/zsh/env/env_macos.zsh"


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
alias legi="ssh -p 25565 cyanwoods@cyanwoods.com"

## Yubikey
alias ce="gpg --card-edit"
alias ctag="/usr/bin/ctags"

# vm
#alias vm76="ssh root@192.168.247.15"

# export clash config 
alias clashcfg="sh /Users/cyanwoods/Nextcloud/Misc/Scripts/clash_ruleset.sh"

#use
alias pro="export https_proxy=http://127.0.0.1:6152 export http_proxy=http://127.0.0.1:6152 export all_proxy=socks5://127.0.0.1:6153"

# default java version
alias djava8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias djava11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
alias djava17="export JAVA_HOME=$(/usr/libexec/java_home -v 17)"
alias djava18="export JAVA_HOME=$(/usr/libexec/java_home -v 18)"
