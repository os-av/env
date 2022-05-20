#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

term="$(cat /proc/$PPID/comm)"

alias ls='ls --color=auto'

# If terminal is st, modify user prompt and set window title to cur dir
p='[\u@\h \W]\$ '
if [[ $term = "st" ]]; then
	p='>>> '
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'
fi

# User prompt
PS1=$p
