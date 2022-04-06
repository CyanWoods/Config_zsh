#################################
# this is the PATH config
#################################
export PATH="/usr/local/bin :$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/cyanwoods/.local/bin:$PATH"
export PATH="/usr/local/Cellar/llvm/13.0.0_2/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"


#################################
# this is the config of conda-init
#################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<




#################################
# this is path config of java
## last export is the acting java
#################################
## openjdk
#export PATH="/usr/local/opt/openjdk/bin:$PATH"
# export CPPFLAGS="-I/usr/local/opt/openjdk@8/include"

## openjdk@17
#export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
# export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"

## openjdk11
#export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
# export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"

## openjdk8
#export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
# export CPPFLAGS="-I/usr/local/opt/openjdk@8/include"

## If JAVA Path has been exported before, this export will not make effect





#################################
# this is path config of ruby
#################################
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"


#################################
# this is path config of llvm
# ###############################
# export LDFLAGS="-L/usr/local/opt/llvm/lib"
# export CPPFLAGS="-I/usr/local/opt/llvm/include"




#appendix
