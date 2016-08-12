# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Enable git prompt
source ~/.git-prompt
PS1="\u@\h:\w\$(parse_git_branch_or_tag) $ "

# Enable grep colouring
alias grep='grep --color=auto'

# Load virtualenvwrapper
. /usr/local/bin/virtualenvwrapper.sh
