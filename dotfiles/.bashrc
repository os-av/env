#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

term="$(cat /proc/$PPID/comm)"

alias ls='ls --color=auto'

# If terminal is st, set window title to cur dir

case $term in st|*term)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'
    ;;
esac

# If terminal is st, modify user prompt
p='[\u@\h \W]\$ '
if [[ $term = "st" ]]; then
	p='>>> '
fi

# User prompt
PS1=$p
