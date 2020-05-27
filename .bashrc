# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[1;32m\]\w \[\e[0;38m\]\$ '
#PS1="\e[0;33m[\u@\h \W]\$ \e[m "

bind -x '"\ec":"rg --ignore-file ~/.cfgignore --files ~/ | fzf | xargs -ro $EDITOR"'
bind -x '"\eo":"ls $HOME/Documents/notes/ | fzf -m --preview '\''cat $HOME/Documents/notes/{1}'\'' --preview-window=right:80% | xargs -r -I{} cat $HOME/Documents/notes/{}"'
stty -ixon

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;33m'
