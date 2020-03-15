#!/usr/bin/fish
function fish_greeting
end

set fish_color_command green
set fish_color_error red 

alias c='find ~/.config ~/Scripts ~/.vimrc -type f | egrep -vi "deezer|chromium|GIMP|Code - OSS" | fzf | xargs -ro vim'
alias b='cd ~/Documents/beleske/'
