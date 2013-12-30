set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Github repos
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
" Vim Snipmate and dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

filetype plugin indent on

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
set ts=2 sts=2 sw=2 noexpandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
