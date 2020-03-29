#!/usr/bin/fish
function fish_greeting
end

#set fish_color_command green
#set fish_color_error red 

alias c='rg --ignore-file ~/.cfgignore --files ~/.config/ ~/Scripts --hidden ~/.vimrc ~/.xinitrc | egrep -vi "deezer|chromium|GIMP|Code - OSS" | fzf | xargs -ro $EDITOR'
alias o='ls $HOME/Documents/notes/ | fzf -m --preview \'cat $HOME/Documents/notes/{1}\' --preview-window=right:80% | xargs -r -I{} cat $HOME/Documents/notes/{}'
alias d='. $HOME/Scripts/fzfdir'
