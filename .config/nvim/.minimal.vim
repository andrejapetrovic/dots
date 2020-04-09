call plug#begin('~/.config/nvim/plugged')
	Plug 'arcticicestudio/nord-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
call plug#end()

set mouse=a

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
nnoremap <c-m><c-t> :Lex<CR>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_cursor = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_winsize = 20

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set shell=/usr/bin/fish

set relativenumber number

let g:fzf_buffers_jump = 1
nnoremap <c-k> :bnext<CR>
nnoremap <c-j> :bprevious<CR>

let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tab split'
      \ }

command Fzfp call fzf#run(fzf#wrap({'source': 'rg --files'}))
command Conf call fzf#run(fzf#wrap({'source': 'rg --ignore-file ~/.cfgignore --files ~/'}))
command OSess call fzf#run({'source': 'ls', 'dir': '~/.local/share/sess', 'sink': 'source', 'down': '40%'})

nnoremap <c-p> :Fzfp<CR>
nnoremap <c-m><c-p> :GFiles<CR>
nnoremap <c-l> :Lines 
nnoremap <a-l> :BLines 
nnoremap <c-x> :Buffers<CR>
nnoremap <c-a> :Rg 
nnoremap <c-h> :History<CR>

"open and save session
nnoremap <c-m><c-o> :OSess<CR>
nnoremap <c-m><c-s> :mks! ~/.local/share/sess/
nnoremap <c-m><c-x> :Conf<CR> 
nnoremap <c-m><c-d> :cd %:p:h<CR> 
nnoremap <c-m><c-e> :term<CR>

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

