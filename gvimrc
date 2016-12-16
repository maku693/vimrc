set cmdheight=1
set columns=100
set guicursor+=a:blinkwait500-blinkoff500-blinkon500
set guioptions=ac
set lines=36
set linespace=1

if has('win32')
  set guioptions+=mr
  set guifont=Consolas:h12
  set guifontwide=MeiryoKe_Console:h12
elseif has('mac')
  set guifont=Roboto\ Mono:h12
  set guifontwide=源ノ角ゴシック:h12
endif

colorscheme usual
