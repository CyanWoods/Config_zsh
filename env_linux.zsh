#################################
# this is the PATH config
#################################
export PATH="/usr/local/bin :$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/cyanwoods/.local/bin:$PATH"
export PATH="/home/cyanwoods/.local/share/gem/ruby/3.0.0/bin:$PATH"


#################################
# this is the config of conda-init
#################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#appendix
