set cmdheight=1
set columns=85 " numberwidth + padding + 80
set guicursor+=a:blinkwait500-blinkoff500-blinkon500
set guioptions=c
set lines=24
set linespace=1
set number

if has('win32')
  set guioptions+=r
  set guifont=Consolas:h10
  set guifontwide=MS_Gothic:h10
  set renderoptions=type:directx,gamma:2.2,contrast:1.0,geom:1,level:1.0,renmode:5,taamode:0
elseif has('mac')
  set guifont=Menlo:h12
endif
