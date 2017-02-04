#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[ \[\e[33;40m\]\u@\h \[\e[35;40m\]\t\[\e[30;47m\] \W \[\e[37;40m\]]\[\e[32;40m\] \$ \[\e[37;40m\]'

# My Setting
export PATH="$PATH:~/bin"
alias ll="ls -l"
alias la="ls -a"
