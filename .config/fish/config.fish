#!/usr/bin/fish
function fish_greeting
end
#set fish_color_command green
#set fish_color_error red 
set -x LESS_TERMCAP_mb (set_color red)
set -x LESS_TERMCAP_md (set_color yellow)
set -x LESS_TERMCAP_me (set_color normal)
set -x LESS_TERMCAP_se (set_color normal)
set -x LESS_TERMCAP_so (set_color -b brblack blue)
set -x LESS_TERMCAP_ue (set_color normal)
set -x LESS_TERMCAP_us (set_color green)


