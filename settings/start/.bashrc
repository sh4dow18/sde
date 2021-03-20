#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --group-directories-first'
PS1='[\u@\h \W]\$ '
