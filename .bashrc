#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Bash Prompt
reset=$(tput sgr 0)
orange=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
white=$(tput setaf 7)
dim_yellow=$(tput setaf 11)
pale=$(tput setaf 14)
dark_green=$(tput setaf 22)
dim_green=$(tput setaf 29)
dark_blue=$(tput setaf 25)
sea_green=$(tput setaf 35)
dark_red=$(tput setaf 160)
dim_orange=$(tput setaf 166)

# Custom prompt
TITLEBAR='\[\e]0;\u@\h: \w\a\]' # Update titlebar, useful when ssh-ing into machine
PS1=$TITLEBAR'\[$sea_green\][\u@\h]\[$pale\][\W]\[$dim_orange\]$(__git_ps1 "[%s]")\[$white\]\$ '
trap 'printf "$reset" "$_"' DEBUG # Reset color for output

# Shell options (some of these are usually set by default)
shopt -s checkwinsize # Resizes after each command if necessary
shopt -s cmdhist # Store multiline commands as one history entry
shopt -s complete_fullquote # Quote metacharacters
shopt -s extglob # Extended globbing
shopt -s histappend # Append to history file

# Ignore and erase duplicate lines in history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=50000
HISTFILESIZE=50000

# Path additions
# If created as a copy of an interactive shell, don't add to path again
# BROWSER is a nonstandard variable set in this file
if [[ $BROWSER == "" ]]; then
  PATH=$PATH:$HOME/scripts/bash
  export PATH
fi

# Give CPU info when bash starts.
screenfetch

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


###############
# Export Variables
###############

# Virtualenv
export WORKON_HOME=~/.virtualenvs
#source /usr/bin/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

###############
# Alias
###############

# VPN
#alias work='openconnect --juniper https://<URL> -qbu <user>'

## Kube
alias kb="kubectl --kubeconfig='/kubernetes/admin.conf'"
alias kba="kubectl --kubeconfig='/kubernetes/admin.conf' -n asap-bo-dev"
alias kbs="kubectl --kubeconfig='/kubernetes/admin.conf' -n kube-system"

alias diff='colordiff'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias date_epoch='date -d ' # requires epoch
alias hist='history | grep' # requires word
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias ..='cd ..'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias update='sudo pacman -Su'
alias lx='ll -BX' # sort by extension
alias lz='ll -rS' # sort by size
alias lt='ll -rt' # sort by date
alias netl='sudo netstat -tulpn'
alias chown='sudo chown'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# PERL5
PERL5LIB="/home/apex/.perl5:/home/apex/.perl5/lib/perl5:/home/apex/.perl5/lib:/home/apex/.perl5/$arch:/home/apex/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/apex/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/apex/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/apex/perl5"; export PERL_MM_OPT;

