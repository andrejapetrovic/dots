call plug#begin('~/.config/nvim/plugged')
	Plug 'arcticicestudio/nord-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf.vim'
call plug#end()

set mouse=a

colorscheme nord
hi Error cterm=NONE ctermbg=160 ctermfg=white
hi ErrorMsg cterm=NONE ctermbg=160 ctermfg=white
hi VertSplit ctermbg=0
"hi StatusLineNC ctermbg=white ctermfg=0
"hi StatusLine ctermbg=white ctermfg=black
"hi MatchParen cterm=NONE ctermbg=24 ctermfg=white
"hi Search cterm=NONE ctermfg=235 ctermbg=blue
"hi Visual cterm=NONE ctermbg=8 ctermfg=NONE
"hi LineNr ctermfg=yellow
"hi String ctermfg=green
"hi Type ctermfg=blue
"hi Comment ctermfg=DarkGray
"hi Statement ctermfg=magenta
"hi Special ctermfg=Cyan
"hi TabLine ctermbg=0 ctermfg=245
"hi TablineFill ctermbg=7 ctermfg=0
"hi NonText ctermfg=DarkGray

set splitright
set splitbelow
set fillchars+=vert:\ 

set tabstop=4
set shiftwidth=4

" netrw
" nnoremap <c-n> :Lex<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_cursor = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_winsize = 20

set shell=/usr/bin/fish

set relativenumber number

"let g:fzf_preview_window = ''
let g:fzf_buffers_jump = 1
"noremap <c-p> :FZF<CR>
"let g:fzf_layout = { 'up': '~40%' }
nnoremap <c-p> :call fzf#run({'source': 'rg --files', 'sink':'e', 'down': '40%'})<CR>
nnoremap <c-n> :call fzf#run({'source': 'rg --files', 'sink':'vsp', 'down': '40%'})<CR>
nnoremap <c-s> :call fzf#run({'source': 'rg --files', 'sink':'sp', 'down': '40%'})<CR>
nnoremap <c-l> :Lines<CR>
nnoremap <c-k> :BLines<CR>
nnoremap <c-x> :Buffers<CR>
nnoremap <c-a> :Rg<CR>

"open session
noremap <c-m><c-o> :call fzf#run({'source': 'ls', 'dir': '~/.local/share/sess', 'sink': 'source', 'down': '40%'})<CR>
"save session
nnoremap <c-m><c-s> :mks ~/.local/share/sess/ 
