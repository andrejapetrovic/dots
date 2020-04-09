#!/usr/bin/fish

function fish_user_key_bindings
	#fzf_key_bindings
	bind \ec 'rg --ignore-file ~/.cfgignore --files ~/ | fzf | xargs -ro $EDITOR'
	bind \eo 'ls $HOME/Documents/notes/ | fzf -m --preview \'cat $HOME/Documents/notes/{1}\' --preview-window=right:80% | xargs -r -I{} cat $HOME/Documents/notes/{}'
end
