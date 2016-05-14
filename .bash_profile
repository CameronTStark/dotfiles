# Setting PATH for Python 3.4 # The orginal version is saved in .bash_profile.pysave #PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}" #export PATH alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
export PATH=/usr/local/bin:$PATH

#set aliases
source ~/.bash_alias

# The following path was created to setup MySQLdb for Python
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

# This command is to enable grc
#source "`brew --prefix`/etc/grc.bashrc"

# manually entered to enable brew command tab-completion
# source `brew --repository`/Library/Contributions/brew_bash_completion.sh
if [ -f $(brew --prefix)/etc/bash_completion ]; then
      . $(brew --prefix)/etc/bash_completion
fi
# sourced to enable virtual environment up cd into directory
source /usr/local/opt/autoenv/activate.sh

# added by Anaconda 2.2.0 installer
#export PATH="/Users/cstark/anaconda/bin:$PATH"

#todo.txt specific items
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d /Users/cstark/.todo/config'
source /Users/cstark/.todo/todo_completion
complete -F _todo t

function prompt
{
local WHITE="\[\033[1;37m\]"
local GREEN="\[\033[0;32m\]"
local CYAN="\[\033[0;36m\]"
local GRAY="\[\033[0;37m\]"
local BLUE="\[\033[0;34m\]"
local PURPLE="\[\033[0;35m\]"
local LIGHTPURPLE="\[\033[1;35m\]"
local BROWN="\[\033[0;33m\]"
local YELLOW="\[\033[1;33m\]"
local WHITE="\[\033[1;37m\]"
export PS1="
${GREEN}\u${CYAN}@${GRAY}\h ${CYAN}\w${WHITE}
$ "
}
prompt
#for bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion ;
fi

#To use the mono assemblies from other formulae you need to set:
export MONO_GAC_PREFIX="/usr/local"

# Use vi editing mode
set editing-mode vi

# Add directory to PYTHONPATH
export PYTHONPATH=$PYTHONPATH:$HOME/git/cse_pv_tools
export PYTHONPATH=$PYTHONPATH:$HOME/git/pvlib-python


# enable powerline
 # powerline-daemon -q
 # POWERLINE_BASH_CONTINUATION=1
 # POWERLINE_BASH_SELECT=1
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#. /usr/local/bin/powerline/bindings/bash/powerline.sh

function _update_ps1() {
    PS1=“$(~/git/dotfiles/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# enable hub, the git wrapper
alias git=hub

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi

# autocompletion ignore case suggestion from MMulligan
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

## Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto' colorize ls by default
export CLICOLOR=1
