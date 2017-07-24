# Enable git prompt
if [ -f ~/.git-prompt ]; then
    source ~/.git-prompt
    PS1="\u@\h:\w\$(parse_git_branch_or_tag) $ "
fi

# Enable grep colouring
alias grep='grep --color=auto'

# Load virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
