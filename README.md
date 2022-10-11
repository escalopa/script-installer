# script-installer

shell installer is a set of shell files that helps to install services on linux automatically.

**Requirement commands for installation `git` `curl`**

## ZSH

Default theme is `strug`

For manual installation look [here](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)

### **Installation** 
### Debian
```shell
sudo apt install zsh -y && curl "https://raw.githubusercontent.com/escalopa/script-installer/main/scripts/zsh.sh"  | bash && chsh -s $(which zsh)
```
### CentOS | RHEL
```shell
sudo dnf install zsh -y && curl "https://raw.githubusercontent.com/escalopa/script-installer/main/scripts/zsh.sh"  | bash && chsh -s $(which zsh)
```

To add ZSH shell to `root` run `su - ` then the command above that matches your system.

After installing ZSH, you have to re-login so that changes take place.

## Aliases

Created aliases file on your system(if not existed) and adds default aliases

### **Installation**

### ZSH | BASH
```shell
curl "https://raw.githubusercontent.com/escalopa/script-installer/main/scripts/alias.sh"  | bash
```

## prompt colors

If you have already `strug` theme, no need to install the prompt since they are the same. 
```shell
curl "https://raw.githubusercontent.com/escalopa/script-installer/main/scripts/prompt.sh" -o prompt.sh && bash prompt.sh default
```

Set danger prompt on root shell,
**YOU MUST BE IN DIR /root** so that the prompt color changes, to go there run `su -` and type root password
```shell
curl "https://raw.githubusercontent.com/escalopa/script-installer/main/scripts/prompt.sh" -o prompt.sh && bash prompt.sh root
```

**Uninstall**

To remove color prompt from your shell you have to manually remove the `export PS1="***"` from your shell file `~/.zshrc` or `~/.bashrc`
then run `source ~/.SHELL_FILE_NAME`.
