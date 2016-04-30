syntax on
set autoindent
set colorcolumn=80
set tw=80
set nowrap
set ruler
set wildmenu
set nonumber

" virtual tabstops using spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" allow toggling between local and default mode
function TabToggle()
  if &expandtab
    set shiftwidth=8
    set softtabstop=0
    set noexpandtab
  else
    set shiftwidth=4
    set softtabstop=4
    set expandtab
  endif
endfunction
map <F9> mz:execute TabToggle()<CR>'z

" autoreload and save
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

" Pathogen plugin manager
execute pathogen#infect()
