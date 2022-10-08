#!/usr/bin

set -e

touch ~/.bash_aliases

# shellcheck disable=SC1078
echo "

#git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gco='git checkout'
alias gps='git push'
alias gpl='git pull'

# hardhat

# go
alias gr='go run'

# sys navigation
alias c='clear'
alias ..='cd ..'

# other
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E \"state|to\ full|percentage\"'
alias lock='gnome-screensaver-command -l'
" >> ~/.bash_aliases

# shellcheck disable=SC1090
source ~/.bashrc