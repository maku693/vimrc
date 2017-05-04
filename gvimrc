set cmdheight=1
set columns=100
set guicursor+=a:blinkwait500-blinkoff500-blinkon500
set guioptions=c
set lines=36
set linespace=1

if has('win32')
  set guioptions+=mr
  set guifont=Consolas:h10
  set guifontwide=MeiryoKe_Console:h10
elseif has('mac')
  set guifont=Menlo:h12
endif

colorscheme usual
