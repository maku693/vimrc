" General
set autoread
set ttyfast
set lazyredraw

" Editing
set autoindent
set backspace=indent,eol,start
set cinoptions=:0g0N-sE-s(sw1Wsm1j1
set encoding=utf-8
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

" UI
set ambiwidth=double
set clipboard=unnamed
set foldcolumn=1
set hidden
set langnoremap
set laststatus=2
set mouse=a
set scrolloff=5
set sidescrolloff=5
set showcmd
set whichwrap+=b,s,h,l,[,],<,>
set wildmenu

" Status line
set laststatus=2
set statusline=%<%f\ %m%r%h%w
set statusline+=%=%l:%c
set statusline+=\ [%{&fenc!=''?&fenc:&enc}][%{&ff}]

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Backup/Swap/Undo files
set nobackup
set noswapfile
set noundofile

" Completion
set omnifunc=syntaxcomplete#Complete

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'maku693/vim-usual'
Plug 'justinmk/vim-dirvish'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css'] }
Plug 'othree/yajs.vim', { 'for': ['html', 'javascript'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'tikhomirov/vim-glsl'
call plug#end()

" Colorscheme
colorscheme usual
let g:cpp_class_scope_highlight=1
syntax on

" autocmds
augroup vimrc
  " Language specific settings overrides
  autocmd!
  autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4  
  autocmd FileType make setlocal noexpandtab

  " Remember last position
  autocmd BufWinLeave ?* mkview
  autocmd BufWinEnter ?* silent loadview


  " vim-dirvish: Map t to "open in new tab"
  autocmd FileType dirvish
        \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
        \ |xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
augroup END

" Keymaps
" Don't use Ex mode, use Q for formatting
map Q gq 
" Clear highlights
nnoremap <CR> :<C-u>noh<CR><CR>
" Move around wraped lines
noremap <silent> j gj
noremap <silent> k gk
noremap <silent> 0 g0
noremap <silent> ^ g^
noremap <silent> $ g$
" Window navigation
nnoremap <silent> s <Nop>
nnoremap <silent> ss :<C-u>split<CR>
nnoremap <silent> sv :<C-u>vsplit<CR>
nnoremap <silent> sh <C-w>h
nnoremap <silent> sj <C-w>j
nnoremap <silent> sk <C-w>k
nnoremap <silent> sl <C-w>l
nnoremap <silent> s= <C-w>=
