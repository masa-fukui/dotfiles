set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set clipboard=unnamed       " yank to clipboard

filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting


" Config Start
call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
call plug#end()
"Config End


let g:airline_theme='violet' " <theme> is a valid theme name

if (has("termguicolors"))
 set termguicolors
endif

" set theme to dracula
syntax enable
colorscheme dracula

" swap esc key with jk  
inoremap jk <ESC>
inoremap <ESC> <NOP>


" NERDtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>"

" disable swap
set noswapfile

" highlight cursorline?
set cursorline
