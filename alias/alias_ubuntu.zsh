alias edzshali="vim ~/.config/zsh/alias/alias_ubuntu.zsh"
alias edzshenv="vim ~/.config/zsh/env/env_ubuntu.zsh"


alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias mc="/etc/init.d/minecraft"

alias rasp="/usr/bin/ssh  -T -f -N -g -R :25564:127.0.0.1:22 cyanwoods@cyanwoods.com"

alias smbstart="sudo mount /dev/sda2 ./Rasp_SMB/ && sudo systemctl start smbd"
alias smbstop="sudo systemctl stop smbd && sudo umount ./Rasp_SMB"