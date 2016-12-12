set cmdheight=1
set columns=100
set guicursor+=a:blinkwait500-blinkoff500-blinkon500
set guifont=Roboto\ Mono:h12
set guioptions=ac
set lines=36
set linespace=1

if has('win32')
  set guifontwide=MS_Gothic:h12
elseif has('mac')
  set guifontwide=源ノ角ゴシック:h12
endif

colorscheme usual
