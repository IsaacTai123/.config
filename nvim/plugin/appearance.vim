"--------------
" key mapping
"--------------
let mapleader = ","

"--------------
" appearance
"--------------
set number             " show line number
set relativenumber
set noshowmode         " disable mode(because of Vim-Airline)
set showcmd            " display command
set nolist             " do not display invisible characters
set wrap              
set linebreak
" set cursorline
set ruler
set showtabline=4
set shortmess=I       " remove splash wording
set equalalways       " split windows are always equal size
set statusline+=%F    " show path in vim
let &showbreak='↳ '
set conceallevel=0    " so i can see `` in markdown file
set nobackup          " this is recommand by coc
set nowritebackup     " this is recommand by coc

"--------------
" split window
"--------------
set splitbelow
set splitright

"--------------
" Scroll
"--------------
set scrolloff=5

"--------------
" Tab and space
" (set tab key to 4 space)
"--------------
set softtabstop=2
set shiftwidth=2
set expandtab        " Converts tabs to space
" set tabstop=4
" set softtabstop=0 noexpandtab
" set shiftwidth=4
filetype plugin indent on

"--------------
" ColorScheme
"--------------
set t_Co=256  " Number of colors
set termguicolors
syntax on
syntax enable

" let g:solarized_termcolors=256
try
  set background=dark
  colorscheme gruvbox
  " colorscheme one
  " colorscheme wombat256
  " " colorscheme janah
  " colorscheme railscasts
  " colorscheme molokai
  " colorscheme solarized
  " colorscheme zenburn
  " highlight EndOfBuffer cterm=NONE ctermfg=bg guibg=NONE ctermbg=NONE
catch
endtry


"--------------
" Sound
"--------------
" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

"--------------
" Netrw
"--------------
let g:netrw_liststyle = 3
let g:netrw_banner = 0

"--------------
" Settings
"--------------
set nocompatible
set clipboard=unnamed
set noswapfile
set hidden
set nobomb            " no BOM(Byte Order Mark)
set mouse=a
set omnifunc=syntaxcomplete#Complete  " 這個可以讓你啟用vim 自帶的autocomplete. 要啟用這個功能我們要用 ctrl+x+o && ctrl+n

"--------------
" Filetype and Encoding
"--------------
filetype on
filetype indent on
filetype plugin on

" file encoding
set encoding=utf-8
scriptencoding utf-8


"---------
"change background to transparent
"---------
" hi Normal guibg=NONE ctermbg=NONE
