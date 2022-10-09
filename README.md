# script-installer

shell installer is a set of shell files that helps to install services on linux automatically

**Requirement commands for installation `git` `curl`**

## ZSH

Default theme is `strug`

For manual installation look [here](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)

### **Installation** 
### Debian
```shell
sudo apt install zsh -y && curl "https://raw.githubusercontent.com/escalopa/script-installer/main/script/zsh-install.sh"  | bash && chsh -s $(which zsh)
```
### CentOS | RHEL
```shell
sudo dnf install zsh -y && curl "https://raw.githubusercontent.com/escalopa/script-installer/main/script/zsh-install.sh"  | bash && chsh -s $(which zsh)
```

To add ZSH shell to `root` run `su - ` then the command above that matches your system.

After installing ZSH, you have to re-login so that changes take place.

## Aliases

Created aliases file on your system and adds default aliases

### **Installation**

### ZSH
```shell
curl "https://raw.githubusercontent.com/escalopa/script-installer/main/script/zsh-alias-install.sh"  | zsh
```

### Bash
```shell
curl "https://raw.githubusercontent.com/escalopa/script-installer/main/script/bash-alias-install.sh"  | bash
```
