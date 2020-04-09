call plug#begin('~/.config/nvim/plugged')
	Plug 'arcticicestudio/nord-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
call plug#end()

set mouse=a
set shell=/usr/bin/zsh
set relativenumber number

colorscheme nord
hi Error cterm=NONE ctermbg=160 ctermfg=white
hi ErrorMsg cterm=NONE ctermbg=160 ctermfg=white
hi VertSplit ctermbg=0

set splitright
set splitbelow
set fillchars+=vert:\ 

set tabstop=4
set shiftwidth=4

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_cursor = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_winsize = 20

let g:fzf_buffers_jump = 1
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tab split'
      \ }

command Fzfp call fzf#run(fzf#wrap({'source': 'rg --files'}))
command Conf call fzf#run(fzf#wrap({'source': 'rg --ignore-file ~/.cfgignore --files ~/'}))
command OSess call fzf#run({'source': 'ls', 'dir': '~/.local/share/sess', 'sink': 'source', 'down': '40%'})

" hotkeys
let mapleader = " "

vnoremap <C-c> "+y
nnoremap <leader>y "+
nnoremap <silent> <leader>n :nohlsearch<Bar>:echo<CR>

nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprevious<CR>

" fzf (mostly)
nnoremap <leader>p :Fzfp<CR>
nnoremap <leader>el :Lines 
nnoremap <leader>eb :BLines 
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>i :History<CR>

nnoremap <leader>so :OSess<CR>
nnoremap <leader>ss :mks! ~/.local/share/sess/
nnoremap <leader>c :Conf<CR> 
nnoremap <leader>sd :cd %:p:h<CR> 
nnoremap <leader>ra :term<CR>
nnoremap <leader>rs :sp \| term<CR>
nnoremap <leader>rv :vsp \| term<CR>
nnoremap <leader>re :Lex<CR>

" windows
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>q <c-w>q
nnoremap <leader>w <c-w>w
tnoremap <c-Space> <c-\><c-n>

"coc
set signcolumn=yes
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" term buffer
augroup custom_term
	autocmd!
	autocmd TermOpen * setlocal bufhidden=hide
augroup END
