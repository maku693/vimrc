set cmdheight=1
set columns=84 " 80 + numberwidth
set guicursor+=a:blinkwait500-blinkoff500-blinkon500
set guioptions=c
set lines=36
set linespace=1
set number

if has('win32')
  set guioptions+=r
  set guifont=Ricty_Diminished:h12
  set rop=type:directx,geom:1,renmode:5
elseif has('mac')
  set guifont=Menlo:h12
endif

colorscheme usual
