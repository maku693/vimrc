" General
set autoread
set ttyfast
set lazyredraw

" Editing
set autoindent
set backspace=indent,eol,start
set cinoptions=:0g0N-sE-s(0
set encoding=utf-8
set expandtab
set iminsert=0
set imsearch=-1
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
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
call plug#end()

" Plugin options
let g:vim_json_syntax_conceal = 0
let g:cpp_class_scope_highlight = 1
if executable("rg")
  let $FZF_DEFAULT_COMMAND = 'rg --files'
  let g:ackprg = 'rg --vimgrep'
endif

" Syntax
colorscheme usual
syntax on

" autocmds
augroup vimrc
  autocmd!

  " FileType specific settings
  autocmd FileType go setlocal noexpandtab
  autocmd FileType make setlocal noexpandtab

  " Remember last position
  autocmd BufWinLeave ?* if &modifiable | mkview | endif
  autocmd BufWinEnter ?* if &modifiable | loadview | endif
augroup END

" Keymaps
" Use ex mode with completions
noremap <silent> Q gQ
" Clear highlights
nnoremap <silent> <CR> :<C-U>noh<CR><CR>
" Move around wraped lines
noremap <silent> j gj
noremap <silent> k gk
noremap <silent> 0 g0
noremap <silent> ^ g^
noremap <silent> $ g$
" Buffer navigation
nnoremap <silent> <C-j> :bnext<CR>
nnoremap <silent> <C-k> :bprevious<CR>
" QuickFix entry navigation
nnoremap <silent> <C-;> :cnext<CR>
nnoremap <silent> <C-'> :cprevious<CR>
" Window navigation
nnoremap <silent> s <Nop>
nnoremap <silent> ss :<C-U>split<CR>
nnoremap <silent> sv :<C-U>vsplit<CR>
nnoremap <silent> sh <C-W>h
nnoremap <silent> sj <C-W>j
nnoremap <silent> sk <C-W>k
nnoremap <silent> sl <C-W>l
nnoremap <silent> s= <C-W>=
tnoremap <silent> <C-W><ESC> <C-W>N
" fzf.vim
nnoremap <silent> <Space>b :Buffers<CR>
nnoremap <silent> <Space>f :Files<CR>
" Ack.vim
nnoremap <Space>a :Ack! <Space>
      
" Platform specific settings
if has('win32')
  set viewdir=$HOME/vimfiles/view
endif
