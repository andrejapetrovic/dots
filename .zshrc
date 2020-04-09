PS1="%B%F{yellow}%3~%f%b $ "
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ap/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias c="rg --ignore-file ~/.cfgignore --files ~/ | fzf | xargs -ro $EDITOR"
alias o="ls $HOME/Documents/notes/ | fzf -m --preview 'cat $HOME/Documents/notes/{1}' --preview-window=right:80% | xargs -r -I{} cat $HOME/Documents/notes/{}"

bindkey -s '\ec' 'c\n'
bindkey -s '\eo' 'o\n'

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;33m'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
