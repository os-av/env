#
# ~/.bash_profile
#

export LESSHISTFILE=-
export PATH=$PATH:~/.local/bin

exec startx

[[ -f ~/.bashrc ]] && . ~/.bashrc
