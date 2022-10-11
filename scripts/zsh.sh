#!/usr/bin

set -e

# shellcheck disable=SC2034
NEW_LINE_TAB='\n\t'

rm -f ~/.zsh*
rm -rf ~/.oh-my-zsh
# oh-my-zsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

# add plugins to zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# change zsh-theme to strug
sed -i "s/robbyrussell/strug/" ~/.zshrc

# add plugins to ~/.zshrc
# shellcheck disable=SC2027
sed -i "s/plugins=(git)/plugins=($NEW_LINE_TAB z $NEW_LINE_TAB git $NEW_LINE_TAB zsh-syntax-highlighting $NEW_LINE_TAB zsh-autosuggestions\n)/" ~/.zshrc

zsh

# shellcheck disable=SC1090
source ~/.zshrc
