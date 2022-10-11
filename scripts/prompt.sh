#!/usr/bin

# shellcheck disable=SC2034 disable=SC2154
STRUG_DEFAULT="%{%}╭─%n@%m %{%}%{%}in %~ %{%}$(git_prompt_info)%{$reset_color%}$(git_remote_status)
%{%}╰$ %{%}"

# shellcheck disable=SC1087
STRUG_ROOT="%B%{%}%{$fg[red]%}╭─%n@%m %b%{$fg[magenta]%}%{%}%{%}in %~ %{%}$(git_prompt_info)%{$reset_color%}$(git_remote_status)
%B%{%}%{$fg[red]%}╰$ %{%}%b"

# shellcheck disable=SC2147 disable=SC2088 disable=SC2123
PATH="~/.zshrc"

# shellcheck disable=SC2088
if ! test -f "$PATH"; then
  # shellcheck disable=SC2147 disable=SC2123
  PATH="~/.bashrc"
fi

ARG=$1
# shellcheck disable=SC1073
if [ "$ARG" == "default" ]; then
  echo "
  autoload -U colors && colors
  export PS1=$STRUG_DEFAULT
  " >>$PATH
elif [ "$ARG" == "root" ]; then
  echo "
  export PS1=$STRUG_ROOT
  " >>$PATH
fi

# shellcheck disable=SC1090
source $PATH

# remove file after installation
rm -rf ~/prompt.sh

