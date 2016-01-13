function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# Prompt with git branch
PS1='\[\e[1;34m\]\u@\h: \[\e[0;32m\]\W/ \[\e[m\]\[\e[2;35m\]$(parse_git_branch) \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# Set vim as my editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Extending Path
export PATH="~/activator:/opt/local/bin:$PATH"

# CCache
export CCACHE_COMPRESS=1
export CCACHE_CPP2=yes

# Mac stuff
# Homebrew api token
#export HOMEBREW_GITHUB_API_TOKEN=

#ansi colors for iterm2
#export CLICOLOR=1

# set colors to match iterm2 terminal colors
#export TERM=xterm-256color

#bash completion for homebrew do not open it for GNU/Linux
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
     #. $(brew --prefix)/etc/bash_completion
#fi

#source $(brew --repository)/Library/Contributions/brew_bash_completion.sh
#source /path/to/.iterm2_shell_integration.bash

# aliases
alias l="ls -al"

# use ls after changing directory
function cdafterls()
{
    builtin cd "$@" && ls;
}

alias cd='cdafterls'
