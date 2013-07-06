set nocompatible

set backspace=indent,eol,start

set nobackup 	" keep backup file
set history=50	" keep 50 lines of command line history
set ruler	" show cursor position all the time
set showcmd	" display incomplete commands
set incsearch	" do incremental searching
syntax on " auto syntax highlighting

" enable mouse in terminal emulator
if has('mouse')
  set mouse=a
endif

" tabspace
set ts=4 sts=4 sw=4 noexpandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
