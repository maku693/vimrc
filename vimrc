" General
set autoread
set ttyfast
set lazyredraw

" Editing
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2
" Remember last position
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" UI
set ambiwidth=double
set clipboard=unnamed
set foldcolumn=1
set hidden
set langnoremap
set laststatus=2
set mouse=a
set number
set ruler
set scrolloff=5
set sidescrolloff=5
set showcmd
set whichwrap+=b,s,h,l,[,],<,>
set wildmenu

" Status line
set laststatus=2
set statusline=%<%f\ %m%r%h%w
set statusline+=%=\ %l/%L\ [%{&fenc!=''?&fenc:&enc}][%{&ff}]

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
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['html', 'css'] }
Plug 'othree/yajs.vim', { 'for': ['html', 'javascript'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
call plug#end()

" Colorscheme
colorscheme usual
let g:cpp_class_scope_highlight=1
syntax on

" Language specific settings overrides
augroup vimrc
  autocmd!
  autocmd FileType c setlocal shiftwidth=4 tabstop=4
  autocmd FileType cpp setlocal shiftwidth=4 tabstop=4
  autocmd FileType make setlocal noexpandtab
augroup END

" Netrw
let g:netrw_banner=0

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
