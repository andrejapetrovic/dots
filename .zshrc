PS1="%B%F{yellow}%3~%f%b $ "

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
bindkey -e
zstyle :compinstall filename '/home/ap/.zshrc'

autoload -Uz compinit
 compinit

local WORDCHARS='*?_[]~=&;!#$%^(){}<>'
stty -ixon

alias ls='ls --color=auto'
alias ytd='youtube-dl -f bestaudio -xi'

bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward

bindkey -s '\ec' 'fzfc\n'
bindkey -s '\eo' 'fzfn\n'
bindkey -s '\ep' 'fzfp\n'
bindkey -s '\en' 'tpane nvim -\n'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

