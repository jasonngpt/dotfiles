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
Bundle 'gregsexton/MatchTag'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Raimondi/delimitMate'
" Vim Snipmate and dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on

set backspace=indent,eol,start

set nobackup 	" keep backup file
set nowritebackup
set noswapfile
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
" Map the set list toggle as a shortcut
nmap <leader>l :set list!<CR>

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" starts NERDTree automatically when vim starts if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" mapping to open NERDTree
map <C-n> :NERDTreeToggle<CR>
