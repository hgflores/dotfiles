#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

##-ANSI-COLOR-CODES-##
Color_Off="\[\033[0m\]"
###-Regular-###
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Purple="\[\033[0;35\]"
Cyan="\[\033[0;36m\]"
Orange="\[\033[0;33m\]"
###-Bold-###
BRed="\[\033[1;31m\]"
BPurple="\[\033[1;35m\]"

PS1=""
PS1+="$Orange\u$Color_Off@$Orange\h$Color_Off:$Cyan\w$Color_Off "

# prompt $ or # for root
PS1+="\$ "
export PS1
#PS1='[\u@\h \W]\$ '

export VISUAL=vim
export EDITOR=vim
