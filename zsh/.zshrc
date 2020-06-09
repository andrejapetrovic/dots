PS1="%B%F{yellow}%3~%f%b $ "

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
bindkey -v
export KEYTIMEOUT=1
zstyle :compinstall filename '/home/ap/.zshrc'

autoload -Uz compinit
 compinit

local WORDCHARS='*?_[]~=&;!#$%^(){}<>'
stty -ixon

alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ytd='youtube-dl -f bestaudio -xi'

bindkey '^h' backward-delete-char
bindkey '^?' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^u' backward-kill-line
bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward
bindkey '^f' autosuggest-accept
bindkey '^e' autosuggest-execute
bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward
bindkey -M vicmd 'K' history-beginning-search-backward
bindkey -M vicmd 'J' history-beginning-search-forward

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    # zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

function fzf-files { fzfp }
zle -N fzf-files
bindkey '\ep' fzf-files

function fzf-config-files { fzfc }
zle -N fzf-config-files
bindkey '\ec' fzf-config-files

function pipe-tmux-pane { tpane nvim - }
zle -N pipe-tmux-pane
bindkey '\em' pipe-tmux-pane

# Yank to the system clipboard
function vi-yank-clip {
    zle vi-yank
   echo "$CUTBUFFER" | wl-copy
}
zle -N vi-yank-clip
bindkey -M vicmd 'y' vi-yank-clip

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

