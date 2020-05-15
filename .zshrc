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
alias ytd="youtube-dl -f bestaudio -x --add-metadata -o '%(title)s.%(ext)s'"

bindkey '^p' up-line-or-search                                                
bindkey '^n' down-line-or-search

bindkey -s '\ec' 'fzfc\n'
bindkey -s '\eo' 'fzfn\n'
bindkey -s '\ep' 'fzfp\n'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

