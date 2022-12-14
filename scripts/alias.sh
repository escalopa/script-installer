#!/usr/bin

# shellcheck disable=SC2089
ALIASES="# ------ aliases ------

#git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gco='git checkout'
alias gps='git push'
alias gpl='git pull'

gacp () {
 msg=$1
 git add . && git commit -m $msg && git push origin
}

# go
alias gr='go run'

# hardhat
alias hh='npx hardhat'
alias hhc='npx hardhat compile'
alias hht='npx hardhat test'
alias hhv='npx hardhat verify --network' 
alias hhd='npx hardhat --network' 
alias hhn='npx hardhat node'

# sys navigation
alias c='clear'
alias ..='cd ..'

# other
alias usage='sudo du -h /  | grep '[0-9\.]\+G'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E \"state|to\ full|percentage\"'
alias lock='gnome-screensaver-command -l'


touch ~/.bash_aliases
echo "$ALIASES" >>~/.bash_aliases

ZSHRC_PATH=~/.zshrc
if test -f "$ZSHRC_PATH"; then
  echo "
  if [ -f ~/.bash_aliases ]; then
            . ~/.bash_aliases
  fi
  " >>~/.zshrc
  zsh
  # shellcheck disable=SC1090
  source ~/.zshrc
else
  # shellcheck disable=SC1090
  source ~/.bashrc
fi
