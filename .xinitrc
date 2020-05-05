#!/bin/sh
picom -b &
setxkbmap -option -layout us,rs -variant ,latinunicodeyz -option grp:shifts_toggle
setxkbmap -option caps:escape &
xsetroot -cursor_name left_ptr &
~/.fehbg &
sxhkd &
polybar example &
exec bspwm
