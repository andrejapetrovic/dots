PS1="%B%F{yellow}%3~%f%b $ "
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ap/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

local WORDCHARS='*?_[]~=&;!#$%^(){}<>'

alias ls='ls --color=auto'
alias ytd='youtube-dl -f bestaudio -x'

bindkey '^p' up-line-or-search                                                
bindkey '^n' down-line-or-search

bindkey -s '\ec' 'fzfc\n'
bindkey -s '\eo' 'fzfn\n'
bindkey -s '\ep' 'fzfp\n'

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;40;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

