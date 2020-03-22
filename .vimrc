"call plug#begin('~/.config/nvim/plugged')

"call plug#end()

set ai
syntax on

"colorscheme pablo
hi StatusLineNC ctermbg=white ctermfg=0
hi StatusLine ctermbg=white ctermfg=black
hi Error cterm=NONE ctermbg=160 ctermfg=white
hi ErrorMsg cterm=NONE ctermbg=160 ctermfg=white
hi MatchParen cterm=NONE ctermbg=24 ctermfg=white
hi Search cterm=NONE ctermfg=235 ctermbg=blue
hi Visual cterm=NONE ctermbg=23 ctermfg=None
"hi LineNr ctermfg=DarkGray
"hi String ctermfg=green
hi Type ctermfg=blue
hi Comment ctermfg=DarkGray
hi Statement ctermfg=magenta
"hi Special ctermfg=Cyan
hi TabLine ctermbg=0 ctermfg=245
hi TablineFill ctermbg=7 ctermfg=0
hi NonText ctermfg=DarkGray

set fillchars+=vert:\ 
hi VertSplit ctermfg=Black

set tabstop=4
set shiftwidth=4

" netrw
nnoremap <c-n> :Lex<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_cursor = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_winsize = 20

filetype plugin on
"set omnifunc=syntaxcomplete#Complete
map <c-s> :terminal<CR>
set shell=/usr/bin/fish

" search highlight
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set relativenumber number

" new lines
"nnoremap <c-n> @="m`o\eg``"<cr>
"nnoremap <c-p> @="m`O\eg``"<cr>   

noremap <c-p> :FZF<CR>
"let g:fzf_layout = { 'up': '~40%' }
