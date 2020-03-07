#!/usr/bin/fish
function fish_greeting
end

set fish_color_command green
set fish_color_error red 

alias c='find ~/.config ~/dmenu-scripts ~/.vimrc -type f | egrep -vi "deezer|Code - OSS" | fzf | xargs -ro vim'
alias b='cd ~/Documents/beleske/'
