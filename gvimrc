set cmdheight=1
set columns=85 " numberwidth + padding + 80
set guicursor+=a:blinkwait500-blinkoff500-blinkon500
set guioptions=c
set lines=24
set linespace=1
set number

if has('win32')
  set guioptions+=r
  set guifont=M+_1mn:h10
  set rop=type:directx,geom:1,renmode:5
elseif has('mac')
  set guifont=Menlo:h12
else
  set guifont=Ubuntu\ Mono\ 12
endif

colorscheme usual
