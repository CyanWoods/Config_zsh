alias edzshali="vim ~/.config/zsh/alias/alias_debian.zsh"
alias edzshenv="vim ~/.config/zsh/env/env_debian.zsh"


alias smbstart="sudo mount /dev/sda2 ./raspi_smb/ && sudo systemctl start smbd"
alias smbstop="sudo systemctl stop smbd && sudo umount ./raspi_smb"
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

alias rasp="/usr/bin/ssh  -T -f -N -g -R :25564:127.0.0.1:22 cyanwoods@cyanwoods.com"