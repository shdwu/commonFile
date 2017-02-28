#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[ \[\e[33m\]\u@\h \[\e[35m\]\t\[\e[30m\] \[\e[33m\]\W \[\e[37m\]]\[\e[32m\] \$ \[\e[37m\]'

# My Setting
export PATH="$PATH:~/bin"
alias ll="ls -l"
alias la="ls -a"
