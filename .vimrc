set ai

syntax on
"set laststatus=2
"set statusline=%F\ %=%p%%\ [%l:%c]
hi StatusLine ctermbg=white ctermfg=black
hi StatusLineNC ctermbg=white ctermfg=black
hi LineNr ctermfg=DarkGray
hi Statement ctermfg=red
hi String ctermfg=yellow
hi Type ctermfg=blue
hi Comment ctermfg=DarkGray
"hi Special ctermfg=Cyan
"hi Visual cterm=reverse ctermbg=NONE
hi Visual cterm=NONE ctermbg=23 ctermfg=None
hi Error cterm=NONE ctermbg=160 ctermfg=white
hi MatchParen cterm=NONE ctermbg=24 ctermfg=white

let NERDTreeMinimalUI = 1

let NERDTreeHighlightCursorline=0
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
set fillchars+=vert:\ 
hi VertSplit ctermfg=Black

"let g:loaded_matchparen=1
set tabstop=4
set shiftwidth=4

map tt :NERDTreeToggle<CR>
map <c-s> :shell<CR>

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set shell=/usr/bin/fish

set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=green
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

augroup modefeedback
    autocmd!
		autocmd InsertEnter * highlight CursorLine ctermbg=17
	autocmd InsertLeave * highlight CursorLine ctermbg=none
augroup END

set relativenumber number

" new lines
nnoremap <c-n> @="m`o\eg``"<cr>
nnoremap <c-p> @="m`O\eg``"<cr>   

