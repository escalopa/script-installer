# shell-installer

shell installer is a set of shell files that helps to install services on linux automatically

**Requirement commands for installation `git` `curl`**

## ZSH

Default theme is `strug`

For manual installation look [here](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)

### **Installation**

Copy & paste the following command into terminal
```shell
curl "https://raw.githubusercontent.com/escalopa/shell-installer/main/zsh-install.sh"  | bash && chsh -s $(which zsh)
```

To add ZSH shell to `root` run `su - ` then the command above

## Bash Aliases

Created bash_aliases file on your system and adds default aliases

### **Installation**

Copy & paste the following command into terminal
```shell
curl "https://raw.githubusercontent.com/escalopa/shell-installer/main/alias-installer.sh"  | sudo sh
```