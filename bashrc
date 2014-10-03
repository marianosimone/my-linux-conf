alias ls='ls -Aq --color=always --file-type --group-directories-first'
export GREP_OPTIONS='--color=auto -n'

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  c_reset=`tput sgr0`
  c_user=`tput setaf 2; tput bold`
  c_path=`tput setaf 4; tput bold`
else
  c_reset=
  c_user=
  c_path=
fi

PS1='${c_user}\u${c_reset}@${c_user}\h${c_reset}:${c_path}\w${c_reset}$(__git_ps1 "[%s]")\$ '

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
