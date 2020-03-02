#!/bin/sh
#picom -b &
setxkbmap -option -layout us,rs -variant ,latinunicodeyz -option grp:menu_toggle
setxkbmap -option caps:escape &
xsetroot -cursor_name left_ptr &
sxhkd &
polybar example &
~/.fehbg &
exec bspwm 
