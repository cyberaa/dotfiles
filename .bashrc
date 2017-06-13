#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Show CPU info when bash starts.
screenfetch

# Virtualenv
export WORKON_HOME=~/.virtualenvs
#source /usr/bin/virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3


# VPN
alias work='openconnect --juniper'
## Kube
alias kb="kubectl --kubeconfig='/kubernetes/admin.conf'"

