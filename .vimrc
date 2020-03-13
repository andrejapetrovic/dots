set number
set ai

syntax on
"set laststatus=2
"set statusline=%F\ %=%p%%\ [%l:%c]
hi StatusLine ctermbg=white ctermfg=black
hi StatusLineNC ctermbg=white ctermfg=black
hi LineNr ctermfg=DarkGray
hi Statement ctermfg=red
hi string ctermfg=yellow
hi Type ctermfg=blue
hi Comment ctermfg=DarkGray
"hi Special ctermfg=Cyan
hi Visual cterm=reverse ctermbg=NONE

let NERDTreeMinimalUI = 1

let NERDTreeHighlightCursorline=0
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
set fillchars+=vert:\ 
hi VertSplit ctermfg=Black

let g:loaded_matchparen=1
set tabstop=4

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
