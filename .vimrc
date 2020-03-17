set ai

syntax on
"set laststatus=2
"set statusline=%F\ %=%p%%\ [%l:%c]
let NERDTreeMinimalUI = 1

colorscheme pablo
hi StatusLineNC ctermbg=white ctermfg=black
hi StatusLine ctermbg=8 ctermfg=7
hi Error cterm=NONE ctermbg=160 ctermfg=white
hi ErrorMsg cterm=NONE ctermbg=160 ctermfg=white
hi MatchParen cterm=NONE ctermbg=24 ctermfg=white
hi Search cterm=NONE ctermfg=232 ctermbg=72
hi Visual cterm=NONE ctermbg=23 ctermfg=None
hi LineNr ctermfg=DarkGray
hi String ctermfg=yellow
hi Type ctermfg=blue
hi Comment ctermfg=DarkGray
hi Statement ctermfg=red
hi Special ctermfg=Cyan
hi TabLine ctermbg=0 ctermfg=245
hi TablineFill ctermbg=7 ctermfg=0
hi NonText ctermfg=DarkGray

let NERDTreeHighlightCursorline=0
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
set fillchars+=vert:\ 
hi VertSplit ctermfg=Black

set tabstop=4
set shiftwidth=4

map tt :NERDTreeToggle<CR>
map <c-s> :shell<CR>

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set shell=/usr/bin/fish

set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

augroup modefeedback
    autocmd!
		autocmd InsertEnter * highlight CursorLine ctermbg=17
	autocmd InsertLeave * highlight CursorLine ctermbg=none
augroup END

set relativenumber number

" new lines
"nnoremap <c-n> @="m`o\eg``"<cr>
"nnoremap <c-p> @="m`O\eg``"<cr>   

