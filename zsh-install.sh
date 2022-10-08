#!/usr/bin

set -e

# shellcheck disable=SC2034
NEW_LINE_TAB='\n\t'

if ! command -v git &> /dev/null; then
    echo "git command could not be found"
else
  if [ "$(id -u)" != "0" ]; then
    echo "This script requires sudo access to install"
    sudo echo
  fi

  sudo apt install zsh -y
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -y)"

  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

  sed -i "s/robbyrussell/strug/" ~/.zshrc
  sed -i "s/plugins=(git)/plugins=($(NEW_LINE_TAB)git$(NEW_LINE_TAB)zsh-syntax-highlighting$(NEW_LINE_TAB)zsh-autosuggestions\n)/" ~/.zshrc

  # shellcheck disable=SC1090
  source ~/.shrc
fi
