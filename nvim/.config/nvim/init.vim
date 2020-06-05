call plug#begin('~/.config/nvim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/gv.vim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'jpalardy/vim-slime'
	Plug 'honza/vim-snippets'
	Plug 'norcalli/nvim-colorizer.lua'
	" Plug 'sheerun/vim-polyglot'
call plug#end()

set mouse=a
set shell=/usr/bin/zsh
set relativenumber number
set updatetime=250
set termguicolors
colorscheme nord 

set splitright
set splitbelow
set fillchars+=vert:\ 
" set colorcolumn=80

set tabstop=4
set shiftwidth=4

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_cursor = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_winsize = 20
let g:netrw_preview = 1

let g:fzf_buffers_jump = 1
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tab split'
      \ }

command Fzfp call fzf#run(fzf#wrap({'source': 'rg --follow --files --hidden --glob "!.git/"', 'down': '80%', 'options': ['--multi']}))
command Conf call fzf#run(fzf#wrap({'source': 'rg --follow --ignore-file ~/.cfgignore --files ~/', 'down': '80%', 'options': ['--multi', '--prompt=Conf>']}))
command OSess call fzf#run({'source': 'ls', 'dir': '~/.local/share/sess', 'sink': 'source', 'down': '40%', 'options': ['--prompt=OpenSession>']})
command OProj call fzf#run({'source': 'ls', 'dir': '~/Projects', 'sink': 'cd', 'down': '40%', 'options': ['--prompt=OpenProj>']})
command RSess call fzf#run({'source': 'ls', 'dir': '~/.local/share/sess', 'sink': '! rm', 'down': '40%', 'options': ['--multi', '--prompt=RemoveSession>']})

" hotkeys
let mapleader = " "

vnoremap <C-c> "+y
vnoremap <C-p> d"+P
nnoremap <silent> <leader>n :nohlsearch<Bar>:echo<CR>
nnoremap <c-k> :<c-f>

nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprevious<CR>

" fzf (mostly)
nnoremap <leader>p :Fzfp<CR>
nnoremap <leader>u :GFiles<CR>
nnoremap <leader>bl :Lines 
nnoremap <leader>bb :BLines 
nnoremap <leader>o :Buffers<CR>
nnoremap <leader>i :History<CR>
nnoremap <leader>m :Marks<CR>

nnoremap <leader>so :OSess<CR>
nnoremap <leader>sp :OProj<CR>
nnoremap <leader>sr :RSess<CR>
nnoremap <leader>ss :mks! ~/.local/share/sess/
nnoremap <leader>sa :w<CR>
nnoremap <leader>sl :w<CR>
nnoremap <leader>sq :wq<CR>
nnoremap <leader>sd :cd %:p:h<CR> 
nnoremap <leader>se :Lex<CR>
nnoremap <leader>c :Conf<CR> 
nnoremap <leader>tt :term<CR>
nnoremap <leader>ts :sp \| term<CR>
nnoremap <leader>tv :vsp \| term<CR>

" windows
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>q <c-w>q
nnoremap <leader>w <c-w>w

"terminal
tnoremap <Esc> <c-\><c-n>
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

"coc
set signcolumn=yes
set updatetime=300
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <c-l> <c-n><c-g>u
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <CR> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
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

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup coc_format
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current line.
nmap <leader>aa  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>af  <Plug>(coc-fix-current)

" git
nmap <leader>gp <Plug>(coc-git-prevchunk)
nmap <leader>gn <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap <leader>gi <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <leader>gc <Plug>(coc-git-commit)
" undo change
nmap <leader>gu :CocCommand git.chunkUndo<CR>
nmap <leader>gs :CocCommand git.chunkStage<CR>
" create text object for git chunks
" omap ig <Plug>(coc-git-chunk-inner)
" xmap ig <Plug>(coc-git-chunk-inner)
" omap ag <Plug>(coc-git-chunk-outer)
" xmap ag <Plug>(coc-git-chunk-outer)

"explorer
nmap <leader>e :CocCommand explorer<CR>

" term buffer
augroup custom_term
	autocmd!
	autocmd TermOpen * setlocal bufhidden=hide 
augroup END

let g:slime_target = "tmux"
let g:slime_no_mappings = 1
xmap <c-a> <Plug>SlimeRegionSend
nmap <c-a> <Plug>SlimeParagraphSend
nmap <c-c> :SlimeSend<CR>
nmap <leader>sc   <Plug>SlimeConfig
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

"comments
autocmd FileType typescript,c setlocal commentstring=//\ %s

"Color preview
lua require'colorizer'.setup()

"git
nmap <leader>gg :G<CR>
nmap <leader>gv :Gvdiff>CR>
nmap <leader>g2 :diffget //2<CR>
nmap <leader>g3 :diffget //3<CR>

"status
"left: file, git branch(fugitive)
"right line,col/perc,total lines
set statusline =
set statusline +=\ %f
set statusline +=%=%{fugitive#statusline()}\ [%(%l,%c%V%)]\ [%L,%P]
